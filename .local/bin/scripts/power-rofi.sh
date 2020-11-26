#!/bin/bash

rofi_command="rofi"

### Options ###

power_off="power off"
reboot="reboot"
lock="lock"
suspend="suspend"
log_out="logout"

# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 4)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
       	i3lock 
        ;;
    $suspend)
        playerctl stop       
        systemctl suspend
        ;;
    $log_out)
        i3-msg exit
        ;;
esac


