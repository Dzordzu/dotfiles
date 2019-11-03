#!/bin/zsh
export KEYTIMEOUT=1
export TERMINAL=alacritty

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
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock


# ZSH config
alias ls='ls --color=auto'
alias v='vim'

bindkey -M menuselect '^[[Z' reverse-menu-complete
setopt MENU_COMPLETE
