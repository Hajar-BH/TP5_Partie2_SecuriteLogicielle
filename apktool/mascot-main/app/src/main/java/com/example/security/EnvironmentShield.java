package com.example.security;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.io.File;

public class EnvironmentShield {

    // ici on vérifie si un débogueur est actuellement attaché au processus
    public static boolean isDebuggerDetected() {
        return android.os.Debug.isDebuggerConnected()
                || android.os.Debug.waitingForDebugger();
    }
    // ici on vérifie si le mode développeur est activé sur l'appareil
    public static boolean isDeveloperModeEnabled(Context context) {
        try {
            return Settings.Secure.getInt(
                    context.getContentResolver(),
                    Settings.Global.DEVELOPMENT_SETTINGS_ENABLED, 0
            ) == 1;
        } catch (Exception e) {
            return false;
        }
    }
    // ici on vérifie si un root est détecté
    public static boolean isRootDetected() {
        String[] paths = {
            "/system/app/Superuser.apk",
            "/sbin/su",
            "/system/bin/su",
            "/system/xbin/su",
            "/data/local/xbin/su",
            "/data/local/bin/su",
            "/system/sd/xbin/su",
            "/system/bin/failsafe/su",
            "/data/local/su"
        };

        for (String path : paths) {
            if (new File(path).exists()) return true;
        }
        return false;
    }

    // ici on vérifie si l'appareil est un emulateur
    public static boolean isRunningOnEmulator() {
        return Build.FINGERPRINT.contains("generic")
                || Build.MODEL.contains("Emulator")
                || Build.MODEL.contains("Android SDK built for")
                || Build.MANUFACTURER.contains("Genymotion")
                || Build.PRODUCT.contains("sdk");
    }

    // ici on vérifie si un environnement de sécurité est détecté
    // Cette méthode globale exécutent tous les contrôles.
    //  Si un environnement à risque est détecté, l'application est immédiatement fermée.
    public static void checkAll(Context context, Activity activity) {
        if (isDebuggerDetected()
          || isDeveloperModeEnabled(context)
          || isRootDetected()
          || isRunningOnEmulator()) {

            activity.finishAffinity();
            System.exit(0); // fermeture de l'application et arrêt du processus
        }
    }
}
