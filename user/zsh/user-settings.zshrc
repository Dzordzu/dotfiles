#!/bin/zsh
export KEYTIMEOUT=1
export TERMINAL=alacritty
export EDITOR=vim

setxkbmap pl

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
alias ls='colorls'
#alias ls='ls --color=auto'
alias v='vim'
alias gu='git ls-files --others --exclude-standard'
alias ncmpcpp='ncmpcpp -c ~/.config/ncmpcpp/config -b ~/.config/ncmpcpp/bindings'
alias mopir='systemctl --user restart mopidy.service'

bindkey -M menuselect '^[[Z' reverse-menu-complete
setopt MENU_COMPLETE



export PATH=$HOME/.npm/bin:$PATH 
export PATH=$DF_DIR:$PATH 
export PATH=$HOME/.config/zsh/project-scripts:$PATH 
export I3SOCK=$(i3 --get-socketpath)

