#!/bin/bash

ANDROID_BUILD_TOOLS="/c/Users/SCD_UM/AppData/Local/Android/Sdk/build-tools/36.1.0"
KEYSTORE="/c/Users/SCD_UM/Desktop/TP5_2/apktool/dev.keystore"

help() {
    echo "Usage : $0 [OPTIONS] {APK}"
    echo "Options :"
    echo "  -h, --help"
    echo "  -s, --keystore [FILE]"
    echo "  -a, --android-build-tools [FOLDER]"
    echo "  -k, --keep"
}

if [[ $# -lt 1 ]]; then
    help
    exit 1
fi

while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help) help; exit 0 ;;
        -s|--keystore) shift; KEYSTORE=$1; shift ;;
        -a|--android-build-tools) shift; ANDROID_BUILD_TOOLS=$1; shift ;;
        -k|--keep) keepOriginal="TRUE"; shift ;;
        -*|--*) echo "Unknown option $1"; exit 1 ;;
        *) if [ -z "$input" ]; then input="$1"; shift; else exit 1; fi ;;
    esac
done

if [ -z "$input" ] || [ ! -f "$input" ]; then 
    echo "❌ APK not found"
    exit 1
fi

# ---- FIX ICI : utiliser le chemin complet vers keytool.exe ----
if [ ! -f "$KEYSTORE" ]; then
    "/c/Program Files/Java/jdk-21/bin/keytool.exe" -genkeypair \
        -keystore "$KEYSTORE" \
        -keyalg RSA \
        -keysize 2048 \
        -validity 10000 \
        -storepass 123456 \
        -keypass 123456 \
        -alias app \
        -dname "CN=Unknown" &>/dev/null
    echo "⚠  Keystore created"
fi
# ----------------------------------------------------------------

directory=$(dirname "$input")
file=$(basename "$input")
extension="${file##*.}"
name="${file%.*}"

original="$directory/$name.$extension"
aligned="$directory/$name.aligned.$extension"
signed="$directory/$name.signed.$extension"
signature="$signed.idsig"

"$ANDROID_BUILD_TOOLS/zipalign.exe" -p 4 "$original" "$aligned"

"$ANDROID_BUILD_TOOLS/apksigner.bat" sign \
  --ks-key-alias app \
  --ks-pass pass:123456 \
  --ks "$KEYSTORE" \
  --out "$signed" \
  "$aligned"

rm -f "$aligned"
rm -f "$signature"

if [ "$keepOriginal" != "TRUE" ]; then
    mv "$signed" "$original"
fi

echo "✅ APK signed successfully"
