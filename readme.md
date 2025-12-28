# README — Partie 2 : Binarisation et injection Smali

**Module :** HAI913I - Évolution et restructuration des logiciels

**Réalisé par :** BOUMEZGANE Hajar 

## Présentation générale

Ce projet correspond à la **Partie 2** du TP, qui porte sur la **binarisation**, l’**analyse du code Smali** et l’**injection de mécanismes de sécurité au niveau binaire**, d’abord manuellement (Exercice 4), puis de manière automatisée (Exercice 5).

La Partie 2 s’appuie directement sur le travail réalisé en **Partie 1**, dans laquelle l’application *Mascot* a été modifiée pour intégrer des détecteurs de sécurité (EnvironmentShield, MyDetectors) au niveau du code source.

---
## Prérequis

* Android Studio (pour générer l’APK et lancer l’émulateur)
* Java (pour Apktool)
* Apktool (`apktool.jar`)
* Android SDK (adb, apksigner)
* Node.js / npm (pour l’exercice 5)
* Un émulateur Android (ex : Pixel 8 Pro)

---
## Organisation du dépôt

```
TP5_2/
├── apktool_exo4/              (Exercice 4 — manipulation manuelle Smali)
│   ├── apktool.jar
│   ├── apksigner.sh
│   ├── app-binary.apk
│   ├── app-binary-decompiled/
│   ├── app-binary-modified.apk
│   └── mascot-decompiled/
│
├── binary-shielder-main/      (Exercice 5 — automatisation TypeScript)
│   ├── apktool-out/
|   ├── src/
│   ├── index.ts
│   ├── package.json
│   └── ...
│
└── README.md
└── Demo_Partie2_SecuriteLogicielle_HajarBoumezgane
```

---
## Exercice 4 — Binarisation et modification manuelle en Smali

### Étape 1 — Génération de l’APK depuis la Partie 1

1. Ouvrir le projet **mascot-main (modifié) (Partie 1)** dans Android Studio.
2. Générer l’APK :

   ```
   Build → Generate App Bundles / APKs → Generate APKs
   ```
3. Récupérer le fichier :

   ```
   app/build/outputs/apk/debug/app-debug.apk
   ```

---

### Étape 2 — Décompilation de l’APK Mascot

Dans le dossier `apktool_exo4` :

```bash
java -jar apktool.jar d app-debug.apk -o mascot-decompiled
```

Le dossier `mascot-decompiled/` contient :

* `AndroidManifest.xml`
* les ressources
* les dossiers `smali/`, `smali_classesX/`

On y retrouve notamment :

```
smali_classes4/com/example/security/
 ├── EnvironmentShield.smali
 └── MyDetectors.smali
```

---
### Étape 3 — Décompilation de l’APK externe

L’APK fourni par l’énoncé (`app-binary.apk`) est ensuite décompilé :

```bash
java -jar apktool.jar d app-binary.apk -o app-binary-decompiled
```

---
### Étape 4 — Injection manuelle des classes Smali

1. Créer le dossier suivant dans l’APK externe :

   ```
   app-binary-decompiled/smali/com/example/security/
   ```
2. Copier depuis `mascot-decompiled` :

   * `EnvironmentShield.smali`
   * `MyDetectors.smali`

---
### Étape 5 — Modification de MainActivity.smali

Dans :

```
app-binary-decompiled/smali/com/example/mascot/MainActivity.smali
```

Ajouter au début de `onCreate()` :

```smali
invoke-static {p0, p0}, Lcom/example/security/EnvironmentShield;->checkAll(Landroid/content/Context;Landroid/app/Activity;)V
```

---
### Étape 6 — Reconstruction et signature

Reconstruire l’APK :

```bash
java -jar apktool.jar b app-binary-decompiled -o app-binary-modified.apk
```

Signer l’APK :

```bash
bash apksigner.sh app-binary-modified.apk
```

---

### Étape 7 — Installation et test

1. Lancer l’émulateur depuis Android Studio.
2. Se placer dans le dossier `platform-tools` :

   ```bash
   .\adb.exe devices
   ```
3. Installer l’APK :

   ```bash
   .\adb.exe install -r C:\Users\...\apktool_exo4\app-binary-modified.apk
   ```
## Résultat attendu :
L’application se lance puis **se ferme immédiatement**, ce qui confirme que les détecteurs fonctionnent (émulateur détecté).

---

## Exercice 5 — Automatisation de l’injection binaire

Dans le dossier `binary-shielder-main` :

### Installation

```bash
npm install
npm run generate-parser
```

### Lancement du script

```bash
npm start -- ../apktool_exo4/app-binary.apk
```

## Fonctionnement du script :

`Étape 2` — Paramétrage de l’entrée
Le script reçoit en paramètre le chemin d’un fichier APK à analyser via la ligne de commande.

`Étape 3` — Décompilation de l’APK
L’APK fourni est automatiquement décompilé à l’aide d’Apktool afin d’obtenir le manifeste, les ressources et le code Smali.

`Étape 4` — Injection des détecteurs Smali
Les fichiers Smali de détection sont copiés dans l’APK décompilé, dans la structure de package appropriée.

`Étape 5` — Identification de l’activité principale
Le manifeste Android est analysé pour identifier l’activité de démarrage, puis le fichier Smali correspondant est localisé, même en cas d’obfuscation.

`Étape 6` — Modification du code via AST
Le code Smali de l’activité principale est analysé sous forme d’AST et un sous-graphe représentant l’appel aux détecteurs est injecté dans la méthode onCreate.

`Étape 7` — Reconstruction de l’APK
L’APK modifié est reconstruit automatiquement à partir du code Smali mis à jour.

## Conclusion

Ce projet montre comment passer :

* d’une **protection au niveau du code source** (Partie 1),
* à une **protection au niveau binaire**, manuelle puis automatisée.

Il met en évidence le fonctionnement interne d’un APK Android, l’utilisation du langage Smali et l’intérêt de l’analyse statique pour la sécurité logicielle.
