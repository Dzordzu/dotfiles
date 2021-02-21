# Dzordzu Dotfiles (DDF) / ZHS

Module that handles vim config. Features:
- Simple plugins configuration
- Separated configuration, but single zshrc file
- Easy PATH extension

## Variables

### ddf_zsh_plugins
List of strings. Represents list of plugins. Inserted into ~/.zsh_plugins.txt


### ddf_zsh_keyboard_layout
Desired keyboard layout - loaded during zsh session start

### ddf_zsh_path
List of strings. Each string extends the PATH variable

### ddf_zsh_auto_tmux
Boolean. Should zsh load automatically load tmux?

### ddf_zsh_v_alias
Either `nvim` or `gvim` or `vim`
