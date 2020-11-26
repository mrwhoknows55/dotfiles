#!/bin/sh
$HOME/.fehbg
sxhkd &
xmodmap $HOME/.config/xmodmaprc &
redshift &
dunst &
xrdb .Xresources
export _JAVA_AWT_WM_NONREPARENTING=1
