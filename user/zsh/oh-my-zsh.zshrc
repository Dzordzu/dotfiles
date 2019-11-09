# Plugins
plugins=(
   git
   docker-compose
   docker
   copyfile
)


export ZSH=/usr/share/oh-my-zsh

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

