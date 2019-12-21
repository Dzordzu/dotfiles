# dotfiles
Preconfigured dotfiles, configs and style guides for linux environment and apps

## Usage
### Setup a new environment
If you want a basic packages for the system use `./prepare-system.sh`. 

### Setup dotfiles
If you want to setup dotfiles you need to:

1. Install needed packages `./install-packages.sh`
2. Install dotfiles `./install-dotfiles.sh full`

## Customization
### Simple updates
Use standalone `./install-dotfiles`
### Updates that require plugin installation
Use `./install-dotfiles full`
### Choose theme
Use `./choose-theme.sh [THEME NAME]`

Currently supported:
1. **Dark (default)**
2. Light

## Configs
- [vim](./docs/vim.md)
- [zsh](./docs/zsh.md)

## Style guide

- [hosts guide](./docs/hosts.md)
- [local user configs](./docs/local-user-configs.md)

## Screenshots
![Desktop with gotop](./docs/screenshot.png)
![Desktop with screenfetch and vim](./docs/screenshot2.png)
![Just vim](./docs/screenshot3.png)


