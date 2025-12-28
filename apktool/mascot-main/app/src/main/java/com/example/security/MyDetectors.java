package com.example.security;

import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.provider.Settings;

import java.io.File;

public class MyDetectors {

    public static boolean isDebuggerDetected() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static boolean isDeveloperModeEnabled(Context context) {
        try {
            return Settings.Secure.getInt(
                    context.getContentResolver(),
                    Settings.Global.DEVELOPMENT_SETTINGS_ENABLED,
                    0
            ) == 1;
        } catch (Exception e) {
            return false;
        }
    }

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
            if (new File(path).exists()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRunningOnEmulator() {
        return Build.FINGERPRINT.contains("generic")
                || Build.MODEL.contains("Emulator")
                || Build.MODEL.contains("Android SDK built for")
                || Build.MANUFACTURER.contains("Genymotion")
                || Build.PRODUCT.contains("sdk");
    }

    public static boolean detectAll(Context context) {
        return isDebuggerDetected()
                || isDeveloperModeEnabled(context)
                || isRootDetected()
                || isRunningOnEmulator();
    }
}
