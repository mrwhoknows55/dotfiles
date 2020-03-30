#   ~/.zprofile
#  Env Vars are set here runs at login

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
# export HOME="/home/mrwhokows"
# Language Vars
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Default programs:
export EDITOR="nano"
export TERMINAL="kitty"
export BROWSER="chromium"
export FILE="thunar"
export READER="zathura"
export STATUSBAR="polybar"

export ANDROID_HOME=$HOME/Developer/Binary/sdk/
# export ANDROID_SDK_ROOT=$HOME/Developer/Binary/sdk

export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$HOME/Developer/Binary/flutter/bin

# ZSH File Directory
export ZDOTDIR="$HOME/.config/zsh/"
source .config/zsh/.zshrc

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
