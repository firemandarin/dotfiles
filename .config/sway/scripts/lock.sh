#!/bin/sh

set -eu

tmp_img=$(mktemp /tmp/lock-XXXXXX.png)
blur_img=$(mktemp /tmp/lock-blur-XXXXXX.png)

cleanup() {
    rm -f "$tmp_img" "$blur_img"
}
trap cleanup EXIT INT TERM

grim "$tmp_img"
magick "$tmp_img" -blur 0x12 "$blur_img"

# LOCK FIRST (no DPMS here)
swaylock -i "$blur_img"

# AFTER unlock → ensure screen is awake
swaymsg "output * dpms on"
