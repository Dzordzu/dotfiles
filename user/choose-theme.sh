#!/bin/bash

THEME=$1

if [ -z "$THEME" ];then
   THEME="dark"
fi


FILE_ALACRITTY=~/.config/alacritty/alacritty.yml
FILE_VIM=~/.config/vim/user-settings.vimrc
FILE_TMUX=~/.config/tmux/style.tmux.conf

if [ "$THEME" = "dark" ]; then
   ALACRITTY_COLOR='*dark'
   VIM_THEME='tender'
   TMUX_BAR_COLOR='#232627'
fi

if [ "$THEME" = "light" ]; then
   ALACRITTY_COLOR='*light'
   VIM_THEME='gruvbox'
   TMUX_BAR_COLOR='#fbf1c7'
fi

# Alacritty 
sed -i "s/^colors: \\*\\w\\+/colors: $ALACRITTY_COLOR/" $FILE_ALACRITTY

# Vim
sed -i "s/^silent\! colorscheme \w\+/silent\! colorscheme $VIM_THEME/" $FILE_VIM

# Tmux
sed -i "s/^set -g status-style \"bg\=\#[0-9a-fA-F]\+\"/set -g status-style \"bg=$TMUX_BAR_COLOR\"/" $FILE_TMUX
tmux source-file ~/.tmux.conf

