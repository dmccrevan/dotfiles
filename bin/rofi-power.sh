#!/bin/bash
rofi_command="rofi -width 15 -hide-scrollbar -lines 5 -opacity 100 -padding 5 -theme dracula"

shutdown="襤 Shutdown"
reboot="⟳ Reboot"
lock=" Lock"
suspend="鈴 Suspend"
logout=" Logout"

options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock
        ;;
    $suspend)
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        i3-msg exit
        ;;
esac


