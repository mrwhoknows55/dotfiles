#!/bin/bash

rofi_command="rofi -p 'Choose Config File:'"

### Options ###

power_off="power off"
reboot="reboot"
lock="lock"
suspend="suspend"
log_out="logout"

i3="i3"
zsh="zsh"
polybar="polybar"
compton="compton"
aliasrc="aliasrc"
profile="profile"
scripts="scripts"
quit="quit"

editor="code"

path_i3=$HOME/'.config/i3/config'
path_zsh=$HOME/'.config/zsh/.zshrc'
path_bar=$HOME/'.config/polybar/config'
path_compton=$HOME/'.config/compton/compton.conf'
path_alias=$HOME/'.config/zsh/aliasrc'
path_profile=$HOME/'.zprofile'
path_scripts=$HOME/'.config/scripts/'

# Variable passed to rofi
options="$i3\n$zsh\n$polybar\n$compton\n$aliasrc\n$profile\n$scripts\n$quit"

chosen="$(echo -e "$options" | $rofi_command -dmenu)"
case $chosen in
    $i3)
	$editor $path_i3
	;;

    $zsh)
	$editor $path_zsh
	;;

    $polybar)
	$editor $path_bar
	;;

    $compton)
	$editor $path_compton
	;;

    $aliasrc)
	$editor $path_alias
	;;

    $profile)
    $editor $path_profile
    ;;

    $scripts)
	$editor $path_scripts
	;;

    $quit)
    ;;

esac


