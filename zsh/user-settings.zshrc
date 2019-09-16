#!/bin/zsh
export KEYTIMEOUT=1
export TERMINAL=alacritty
export EDITOR=/bin/vim

# Constants
# ZSH_THEME="cobalt2"

# Autocompletion
zstyle :compinstall filename '/home/dzordzu/.zshrc'
autoload -Uz compinit
compinit

setopt autocd
setopt COMPLETE_ALIASES

# SSH agent auto add
PS1='[\u@\h \W]\$ '
export SSH_AUTH_SOCK=~/.ssh/ssh-agent.$HOSTNAME.sock
ssh-add -l 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
  ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
fi


# ZSH config
alias ls='ls --color=auto'

# Use vim bindings
EDITOR=/bin/vim
bindkey -v

## ESC + v as vim edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

