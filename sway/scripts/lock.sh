#!/bin/sh

grim /tmp/lock.png
magick /tmp/lock.png -blur 0x8 /tmp/lock-blur.png

exec swaylock -f -i /tmp/lock-blur.png
