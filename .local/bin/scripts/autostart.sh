#!/bin/sh
# this script runs startup programs

$HOME/.fehbg	#wal -R			# sets wallpaper
xmodmap $HOME/.config/xmodmaprc & 	# changes modkey config(swaps esc -> caps lk)
redshift &				# inits blue light filter
dunst &					# inits notification daemon
xrdb .Xresources 			# sets colorscheme
export _JAVA_AWT_WM_NONREPARENTING=1	# for android studio dwm issue specific
sxhkd &					# inits hotkey daemon
