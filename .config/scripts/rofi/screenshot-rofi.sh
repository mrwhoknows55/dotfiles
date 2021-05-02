#!/bin/bash

rofi_command="rofi -p 'Screenshot'"

full="Full Screen"
area="Select Area"
focused="Focued Window"

options="$full\n$area\n$focused"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $full)
        sleep 1 && scrot -e 'mv $f ~/Pictures' && notify-send -a scrot -t 2000 "Screenshot saved in ~/Pictures"
        ;;
    $area)
        sleep 1 && scrot -sfe 'mv $f ~/Pictures' && notify-send -a scrot -t 2000 "Screenshot saved in ~/Pictures"
        ;;
    $focused)
        sleep 1 && scrot -ue 'mv $f ~/Pictures' && notify-send -a scrot -t 2000 "Screenshot saved in ~/Pictures"
        ;;
esac
