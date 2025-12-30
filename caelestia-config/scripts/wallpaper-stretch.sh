#!/usr/bin/env bash

WALLPAPER_FILE="/etc/xdg/quickshell/caelestia/modules/background/Wallpaper.qml"
TARGET_STRING="fillMode: Image.Stretch"

if [ ! -f "$WALLPAPER_FILE" ]; then
    echo "Error: File $WALLPAPER_FILE not found."
    exit 1
fi

if grep -q "$TARGET_STRING" "$WALLPAPER_FILE"; then
    echo "'$TARGET_STRING' already exists. No further changes made."
    exit 0
fi

sed -i '/component Img: CachingImage {/,/^    }/ {
    /id: img/a\        fillMode: Image.Stretch
}' "$WALLPAPER_FILE"

echo "Added '$TARGET_STRING' to Img component."
