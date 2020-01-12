#!/bin/zsh
export KEYTIMEOUT=1
export TERMINAL=alacritty
export EDITOR=vim

setxkbmap pl

# Get current directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
DIR=$( dirname $DIR/../ )

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
alias gu='git ls-files --others --exclude-standard'
alias ncmpcpp='ncmpcpp -c ~/.config/ncmpcpp/config -b ~/.config/ncmpcpp/bindings'

bindkey -M menuselect '^[[Z' reverse-menu-complete
setopt MENU_COMPLETE



export PATH=$HOME/.npm/bin:$PATH 
export PATH=$DIR:$PATH 
