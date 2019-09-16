#!/bin/bash

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

# Install i3
cp -rf $DIR/i3 ~/.config/

# Install alacritty
cp -rf $DIR/alacritty ~/.config

# Install tmux
cp -rf $DIR/tmux ~/.config
mv ~/.config/tmux/.tmux.conf ~/.tmux.conf

# Install zsh
cp -rf $DIR/zsh ~/.config
mv ~/.config/zsh/.zshrc ~/.zshrc


# Install polybar
ETH_INT=$(ip link | awk 'BEGIN {FS=": "} {print $2}' | grep "^en")
WL_INT=$(ip link | awk 'BEGIN {FS=": "} {print $2}' | grep "^wl")
cp -rf $DIR/polybar ~/.config
sed -i "s/????ETH????/$ETH_INT/g" ~/.config/polybar/modules/network.ini
sed -i "s/????WL????/$WL_INT/g" ~/.config/polybar/modules/network.ini

# Install rofi
cp -rf $DIR/rofi ~/.config

# Install vim
cp -rf $DIR/vim ~/.config
mv ~/.config/vim/.vimrc ~/.vimrc
