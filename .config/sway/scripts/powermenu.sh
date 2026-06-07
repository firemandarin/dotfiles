#!/bin/sh

choice=$(printf "Lock\nLogout\nReboot\nShutdown" | \
    wofi --dmenu --prompt "Power")

case "$choice" in
    Lock)
        ~/.config/sway/scripts/lock.sh
        ;;
    Logout)
        swaymsg exit
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac
