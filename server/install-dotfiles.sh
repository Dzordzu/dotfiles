#!/bin/bash

INSTALL_TYPE="$1"

# Get current directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

# Prepare .config
mkdir -p ~/.config

# Install zsh
cp -rf $DIR/zsh ~/.config
mv ~/.config/zsh/.zshrc ~/.zshrc

# Install vim
cp -rf $DIR/vim ~/.config
mv ~/.config/vim/.vimrc ~/.vimrc

if [[ "$INSTALL_TYPE" == "full" ]]; then 
   vim +VimEnter +PlugInstall +PlugClean +qall
   
   cd ~/.vim/plugged/command-t/ruby/command-t/ext/command-t
   ruby extconf.rb
   make

   cd ~/.vim/plugged/YouCompleteMe
   python3 install.py --all
fi

