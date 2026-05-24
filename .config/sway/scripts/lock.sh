#!/bin/sh
# Take a screenshot
grim /tmp/screenshot.png
# Blur the screenshot using ImageMagick
convert /tmp/screenshot.png -blur 0x8 /tmp/screenshot_blurred.png
# Lock the screen with the blurred image
swaylock -i /tmp/screenshot_blurred.png
