export KEYTIMEOUT=1

# Constants
# ZSH_THEME="cobalt2"

# Autocompletion
zstyle :compinstall filename '/home/dzordzu/.zshrc'
autoload -Uz compinit
compinit

setopt autocd
setopt COMPLETE_ALIASES

# ZSH config

# Use vim bindings
EDITOR=/bin/vim
bindkey -v

## ESC + v as vim edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

