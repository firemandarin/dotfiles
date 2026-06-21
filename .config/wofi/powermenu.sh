#!/bin/bash

# Added "Exit" to the choices
choices="Lock\nExit\nRestart\nShutdown\nCancel"

# wofi prompt
choice=$(echo -e "$choices" | wofi --dmenu --width 260 --height 200 --prompt "Power")

case "$choice" in
  "Lock")
    swaylock -f -c 000000
    ;;
  "Exit")
    swaymsg exit
    ;;
  "Restart")
    systemctl reboot
    ;;
  "Shutdown")
    systemctl poweroff
    ;;
  *)
    exit 0
    ;;
esac
