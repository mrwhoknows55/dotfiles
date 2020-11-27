eval `dbus-launch --sh-syntax --exit-with-x11`
xbindkeys
sh $HOME/.local/bin/scripts/autostart.sh
exec dwm
