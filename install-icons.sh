#!/bin/bash
# Копирует IM-иконки во все mipmap- директории Element X Android
set -e

ICON_DIR="icons"
ELEMENT_DIR="element-x-android/appicon/element/src/main/res"

# Проверяем что иконки есть
if [ ! -d "$ICON_DIR" ]; then
  echo "ERROR: $ICON_DIR not found. Run this after placing icons/ folder."
  exit 1
fi

echo "==> Installing IM icons..."

for dpi in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  src="$ICON_DIR/ic_launcher_${dpi}.png"
  dest="$ELEMENT_DIR/mipmap-${dpi}/ic_launcher.png"
  
  if [ ! -f "$src" ]; then
    echo "WARNING: $src not found, skipping"
    continue
  fi
  
  cp "$src" "$dest"
  echo "  ✓ $dpi"
done

echo "==> Icons installed."
