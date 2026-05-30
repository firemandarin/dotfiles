#!/usr/bin/env bash

chosen=$(echo -e "Shutdown\nReboot\nLock Screen\nExit Session" | rofi -dmenu -i -p "Power" -theme ~/.config/rofi/powermenu.rasi)

case "$chosen" in
    "Shutdown") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    "Lock Screen") ~/.config/sway/scripts/lock.sh ;;
    "Exit Session") swaymsg exit ;;
esac
