#   ~/.zprofile
#  Env Vars are set here runs at login
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Language Vars
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Default programs:
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="brave"
export BROWSER_SEC="firefox"
export FILE="thunar"
export READER="zathura"
export STATUSBAR="polybar"
export SCRIPTS="$HOME/.local/bin/scripts"

# Doom Emacs 
export PATH=${PATH}:$HOME/.emacs.d/bin

export XDG_USER_CONFIG_DIR=$HOME/.config
export QT_QPA_PLATFORMTHEME=qt5ct

export ANDROID_HOME=$HOME/Developer/Binary/sdk
export ANDROID_SDK_ROOT=$HOME/Developer/Binary
#export IDEA_JDK=$HOME/.jdks/openjdk-14.0.2/bin
#export JAVA_HOME=$HOME/Developer/Binary/android-studio/jre/bin
#export JAVA_HOME=$IDEA_JDK

export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$HOME/Developer/Binary/flutter/bin
export PATH=${PATH}:$HOME/Developer/Binary/idea/bin
#export PATH=${PATH}:$JAVA_HOME
export _JAVA_AWT_WM_NONREPARENTING=1 

# Flask
export FLASK_APP="app.py"

# Go
#export GOROOT="/home/whoknows/Developer/Go/"
#export GOBIN="/home/whoknows/Developer/Go/bin"
export GOPATH="/home/whoknows/Developer/Go/"

#export PATH=${PATH}:$GOROOT
#export PATH=${PATH}:$GOBIN
export PATH=${PATH}:$GOPATH

# ZSH File Directory
export ZDOTDIR="$HOME/.config/zsh/"
source $ZDOTDIR/.zshrc

export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty2" ] && ! pgrep -x Xorg >/dev/null && SESSION_TYPE=x11 GDK_BACKEND=x11 exec startx

