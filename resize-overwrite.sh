#!/bin/bash

SRC=./assets/images

# --- app icon (1024x1024) ---
magick "$SRC/icon.png[0]" \
  -resize 1024x1024^ -gravity center -extent 1024x1024 \
  "$SRC/icon.png"

# --- android adaptive icons (432x432) ---
for f in android-icon-foreground android-icon-background android-icon-monochrome
do
  magick "$SRC/$f.png[0]" \
    -resize 432x432^ -gravity center -extent 432x432 \
    "$SRC/$f.png"
done

# --- favicon (48x48) ---
magick "$SRC/favicon.png[0]" \
  -resize 48x48^ -gravity center -extent 48x48 \
  "$SRC/favicon.png"

# --- splash icon (2000x2000) ---
magick "$SRC/splash-icon.png[0]" \
  -resize 2000x2000^ -gravity center -extent 2000x2000 \
  "$SRC/splash-icon.png"

echo "✅ Resize เสร็จแล้ว (ไฟล์ถูกเขียนทับเรียบร้อย)"
