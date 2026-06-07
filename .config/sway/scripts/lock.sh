#!/bin/sh

grim /tmp/lock.png
magick /tmp/lock.png -blur 0x8 /tmp/lock-blur.png

swaylock -i /tmp/lock-blur.png

rm -f /tmp/lock.png /tmp/lock-blur.png
