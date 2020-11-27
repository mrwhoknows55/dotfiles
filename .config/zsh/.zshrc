# Load aliases
[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"
export ZSH="$HOME/.oh-my-zsh"

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

autoload -U colors && colors
# OMZ Configs

ZSH_THEME="refined"
# refined  arrow  nanotech  jnrowe muse kolo
# jonathan -> full dual line
# agnoster -> powerline

# Plugins
pluginis=(git, wakatime)

source $ZSH/oh-my-zsh.sh

# tools to run everytime 
cowsay  -f tux "Welcome MrWhoKnows"
