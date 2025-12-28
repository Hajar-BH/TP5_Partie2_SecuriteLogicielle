import { execSync } from "child_process";
import * as fs from "fs";
import * as path from "path";
import { AndroidManifestParser } from "./lib/AndroidManifest.js";

import { CharStream, CommonTokenStream, BaseErrorListener } from "antlr4ng";
import { SmaliLexer } from "./lib/SmaliLexer.js";
import { SmaliParser } from "./lib/SmaliParser.js";
import { SmaliWriter } from "./lib/SmaliWriter.js";


// Listener silencieux pour ignorer les erreurs ANTLR
class SilentErrorListener extends BaseErrorListener {
    override syntaxError() { /* ignore totally */ }
}

// ÉTAPE 2 — Lecture du fichier APK

const apkPath = process.argv[2];

if (!apkPath) {
    console.error("Aucun fichier APK fourni !");
    console.error("Usage : npm start -- <fichier.apk>");
    process.exit(1);
}

console.log("✔ APK en entrée :", apkPath);
console.log("✔ Étape 2 OK — Le programme reçoit bien un APK.");

if (!fs.existsSync(apkPath)) {
    console.error("Fichier APK introuvable !");
    process.exit(1);
}

// ÉTAPE 3 — Décompilation

const outputFolder = "apktool-out";

if (fs.existsSync(outputFolder))
    fs.rmSync(outputFolder, { recursive: true, force: true });

console.log("Décompilation de l'APK...");

const apktoolPath = path.resolve("../apktool/apktool.jar");
const decodeCmd = `java -jar "${apktoolPath}" d "${apkPath}" -o "${outputFolder}" -f`;

execSync(decodeCmd, { stdio: "inherit" });

console.log("✔ Étape 3 OK — APK décompilé dans : apktool-out");

// ÉTAPE 4 — Injection des détecteurs

const detectorsSrc = path.join("src", "detectors");
const detectorsDst = path.join(outputFolder, "smali", "com", "example", "security");

fs.mkdirSync(detectorsDst, { recursive: true });

for (const f of fs.readdirSync(detectorsSrc).filter(f => f.endsWith(".smali"))) {
    fs.copyFileSync(
        path.join(detectorsSrc, f),
        path.join(detectorsDst, f)
    );
    console.log(" Injecté :", f);
}

console.log("✔ Étape 4 OK — Les détecteurs Smali ont été injectés (Injecteurs copiés).");

// ÉTAPE 5 — Analyse du manifeste + Recherche de la classe via AST (LEXER)

console.log("ÉTAPE 5 — Analyse du manifeste + Détection via AST ");

// 1) Charger le manifeste
const manifestPath = path.join(outputFolder, "AndroidManifest.xml");
const manifestParser = new AndroidManifestParser();
const manifest = manifestParser.parse(manifestPath);

const activities = manifest.manifest.application.activity ?? [];

const mainActivity = activities.find(a =>
    a["intent-filter"]?.some(f =>
        f.action?.["@android:name"] === "android.intent.action.MAIN" &&
        f.category?.["@android:name"] === "android.intent.category.LAUNCHER"
    )
);

if (!mainActivity) {
    console.error("Impossible de trouver l’activité principale !");
    process.exit(1);
}  

console.log("✔ Activité principale :", mainActivity["@android:name"]);

const expectedClass = "L" + mainActivity["@android:name"].replace(/\./g, "/") + ";";

console.log("✔ Classe Smali attendue :", expectedClass);

// AST via LEXER — extraction robuste du nom de classe

function extractClassNameWithLexer(smaliContent: string): string | null {
    try {
        const lexer = new SmaliLexer(CharStream.fromString(smaliContent));
        let token = lexer.nextToken();

        while (token.type !== SmaliLexer.EOF) {

            // Le lexer reconnaît bien un "class descriptor" :
            // Exemple : Lcom/example/mascot/MainActivity;
            if (token.text?.startsWith("L") && token.text.endsWith(";")) {
                return token.text;
            }

            token = lexer.nextToken();
        }

        return null;

    } catch (e) {
        return null;
    }
}     

// Parcourir tous les .smali et chercher le bon fichier
console.log("Recherche du fichier contenant la classe (via AST)…"); 

let foundFile: string | null = null;

function searchSmali(dir: string) {
    for (const entry of fs.readdirSync(dir)) {
        const full = path.join(dir, entry);

        if (fs.statSync(full).isDirectory()) {
            searchSmali(full);
            if (foundFile) return;
        }
        else if (entry.endsWith(".smali")) {

            const content = fs.readFileSync(full, "utf8");
            const className = extractClassNameWithLexer(content);

            if (className === expectedClass) {
                foundFile = full;
                return;
            }
        }
    }
}

searchSmali(path.join(outputFolder, "smali"));

if (!foundFile) {
    console.error("Aucun fichier Smali ne correspond à la classe principale !");
    process.exit(1);
}

console.log("✔ Fichier Smali identifié via AST :");
console.log("   ➤", foundFile);

// ÉTAPE 6 — Injection AST juste après le header de la méthode onCreate
console.log(" ÉTAPE 6 — Injection AST dans onCreate()");

// Lire le fichier Smali
const fileContent = fs.readFileSync(foundFile, "utf8");

// Reparse complet
const lexer6 = new SmaliLexer(CharStream.fromString(fileContent));
const tokens6 = new CommonTokenStream(lexer6);
const parser6 = new SmaliParser(tokens6);
const tree6 = parser6.parse();

function findOnCreateMethod(node: any): any {
    if (!node || !node.children) return null;

    for (let child of node.children) {

        // 1. Si c’est une méthode
        if (child.ruleIndex === SmaliParser.RULE_methodDirective) {
            const txt = child.getText();
            if (txt.includes("onCreate") && txt.includes("Landroid/os/Bundle;")) {
                return child; // Méthode trouvée
            }
        }

        // 2. Sinon on descend dans l’AST (recherche récursive)
        const found = findOnCreateMethod(child);
        if (found) return found;
    }

    return null;
}

console.log(" Recherche de la méthode onCreate dans l’AST…");

const onCreateNode = findOnCreateMethod(tree6);

if (!onCreateNode) {
    console.error("onCreate introuvable dans l'AST !");
    process.exit(1);
}

console.log("✔ Méthode onCreate trouvée dans l’AST !");


if (!onCreateNode) {
    console.error("AST : méthode onCreate introuvable !");
    process.exit(1); 
}

console.log("✔ AST : méthode onCreate trouvée.");

// 2 Construire un sous-graphe ANTLR depuis du Smali textuel
const codeToInject = `
    invoke-static {p0}, Lcom/example/security/MyDetectors;->runAllChecks(Ljava/lang/Object;)V
`;

const injLexer = new SmaliLexer(CharStream.fromString(codeToInject));
const injTokens = new CommonTokenStream(injLexer);
const injParser = new SmaliParser(injTokens);
const injGraph = injParser.methodBodyStatement(); // Graphe AST valide

console.log("✔ Sous-graphe AST généré.");

// 3 Insérer juste après ".locals"
let inserted = false;

for (let i = 0; i < onCreateNode.children.length; i++) {
    const ch = onCreateNode.children[i];

    if (ch.getText().startsWith(".locals")) {
        onCreateNode.children.splice(i + 1, 0, injGraph);
        inserted = true;
        break;
    }
}

if (!inserted) {
    console.error("Impossible d'injecter dans onCreate (pas de .locals)");
    process.exit(1);
}

console.log("✔ Injection réussie après .locals dans onCreate()");

// 4 Réécriture du fichier Smali
SmaliWriter.write(tree6, foundFile);

console.log("✔ Fichier modifié avec succès !");

// ÉTAPE 7 — Reconstruction de l’APK modifié

console.log("ÉTAPE 7 — Reconstruction de l’APK modifié...");

const rebuiltApkDir = path.join(outputFolder, "dist");
const rebuiltApkPath = path.join(rebuiltApkDir, "app-rebuilt.apk");

// Commande Apktool pour reconstruire
const buildCmd = `java -jar "${apktoolPath}" b "${outputFolder}" -o "${rebuiltApkPath}"`;

try {
    execSync(buildCmd, { stdio: "inherit" });
    console.log("✔ APK reconstruit avec succès !");
    console.log("Fichier généré :", rebuiltApkPath);
} catch (e) {
    console.error("Erreur : échec de la reconstruction de l’APK !");
    process.exit(1); 
}
