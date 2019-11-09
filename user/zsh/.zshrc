
if [ -f ~/.config/zsh/launch.zshrc ]; then
    source ~/.config/zsh/launch.zshrc
else
    print "404: ~/.config/zsh/launch.zshrc not found."
fi


if [ -f ~/.config/zsh/style.zshrc ]; then
    source ~/.config/zsh/style.zshrc
else
    print "404: ~/.config/zsh/style.zshrc not found."
fi


if [ -f ~/.config/zsh/oh-my-zsh.zshrc ]; then
    source ~/.config/zsh/oh-my-zsh.zshrc
else
    print "404: ~/.config/zsh/oh-my-zsh.zshrc not found."
fi


if [ -f ~/.config/zsh/plugins.zshrc ]; then
    source ~/.config/zsh/plugins.zshrc
else
    print "404: ~/.config/zsh/plugins.zshrc not found."
fi


if [ -f ~/.config/zsh/user-settings.zshrc ]; then
    source ~/.config/zsh/user-settings.zshrc
else
    print "404: ~/.config/zsh/user-settings.zshrc not found."
fi

############################
# SPECIAL USER SETTINGS
############################

if [ -f ~/.config/zsh/vim.zshrc ]; then
    source ~/.config/zsh/vim.zshrc
else
    print "404: ~/.config/zsh/vim.zshrc not found."
fi


if [ -f ~/.config/zsh/history.zshrc ]; then
    source ~/.config/zsh/history.zshrc
else
    print "404: ~/.config/zsh/history.zshrc not found."
fi

