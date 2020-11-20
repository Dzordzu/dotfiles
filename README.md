# dotfiles
*Dzordzu Dotfiles*

My dotfiles. Deploy using ansible

![Version: 1.0.0]( https://img.shields.io/badge/version-1.0.0-red )
![Build: unstable]( https://img.shields.io/badge/build-unstable-red )

## Requirements

### System

Following systems were tested in the given time ranges

| System    | Architecture | Since      | Until | Tested version | Tester  |
|-----------|--------------|------------|-------|----------------|---------|
| Archlinux | x86_64       | 04.11.2020 | now   | 1.0.0          | Dzordzu |

## Usage

### Pre-installation

If you want, you can use predefined scripts to prepare your system for this repo.
It will install `ansible` and `python` libraries. In case of systems like archlinux
it will also setup you system.

```sh
# Install git and then
git clone https://github.com/Dzordzu/dotfiles
dotfiles/files/preinstall/<system>/preinstall.sh
```

### Basic installation

Requires `python` on a host

1. Install requirements `ansible-galaxy install -r requirements.yml`
2. Run default playbook `ansible-playbook -i inventories/user default.yml --ask-become-pass`

### Binaries

#### ddf
![INCOMPLETE]( https://img.shields.io/badge/status-incomplete-yellow)
![Missing shortands]( https://img.shields.io/badge/missing-shortands-red)

General ddf informations
Lists available binaries. Shows version.
Shows dir with playbook

```
ddf --version
ddf -v

ddf --dir
ddf -d

ddf --bin-dir
ddf -bd

ddf --binaries
ddf -b

ddf --help
ddf -h
```

#### ddf-update
Updates repo with dotfiles
```
ddf-update
ddf-update --unstable
```

#### ddf-topgrade
![TODO]( https://img.shields.io/badge/status-todo-red )
```
ddf-topgrade
ddf-topgrade --add-git-repo /home/user/somerepo/
ddf-topgrade --remove-git-repo /home/user/anotherrepo
```

#### ddf-path
![TODO]( https://img.shields.io/badge/status-todo-red )

Manages path in repo, additionaly exporting it for current session.
```
ddf-path add /home/user/bin
ddf-path list
ddf-path remove /home/user/bin
```

#### ddf-package
![TODO]( https://img.shields.io/badge/status-todo-red )

Manages packages using proper manager.
Additionally adds them to repo
Use `--passive` flag to prevent tool from doing action on host
(it will be added/removed only to/from repo)
```
ddf-package add vim
ddf-package list
ddf-package remove emacs

ddf-package add vim --passive
ddf-package remove emacs --passive
```

#### ddf-theme
![TODO]( https://img.shields.io/badge/status-todo-red )

Change theme
```
ddf-theme list
ddf-theme use dark
ddf-theme use light
```

#### ddf-refresh
![TODO]( https://img.shields.io/badge/status-todo-red )

Refresh system (reload i3 etc.)

```
ddf-refresh
ddf-refresh --i3
ddf-refresh --vim
ddf-refresh --zsh
```

#### ddf-playbook
![TODO]( https://img.shields.io/badge/status-todo-red )

Choose playbook for ansible. If no option set, just prints the current playbook
```
ddf-playbook
ddf-playbook --help
ddf-playbook --list
ddf-playbook --set <PLAYBOOOK>
```

#### ddf-project
![TODO]( https://img.shields.io/badge/status-todo-red )

Create project from template, remember project location, list available projects

```
ddf-project new <template-name> --params <parameters>
ddf-project new <template-name> --params-file <path>
ddf-project list
ddf-project list --template <template-name>
ddf-project remember <path> # Interactive mode
ddf-project remember --id <project id> --path <path> --description <desc> --template <template-name>
ddf-project forget <path>
ddf-project forget -p <path>
ddf-project forget -i <project id>
ddf-project --help
ddf-project manage --add-author
ddf-project manage --build
ddf-project manage --run
```

#### gpg-add
Simple script that acts like `ssh-add` but for gpg. Currently there is no option to specify key

## Planned commands
### Misc

#### ddf-infra
![Planned]( https://img.shields.io/badge/status-planned-blue)

```
ddf-infra new auth
ddf-infra new identity-management
ddf-infra new service
ddf-infra new storage
ddf-infra new monitoring
ddf-infra new --planned <plan id>

ddf-infra remove <id>
ddf-infra status

ddf-infra plan new
ddf-infra plan remove
ddf-infra plan status

ddf-infra connect
ddf-infra disconnect
ddf-infra --help
```

### ddf-de2sert
#### ddf-cherry

Integration with cherry-cli. Automatically associate tasks with certain project

```
ddf-cherry configure
ddf-cherry new <task>
ddf-cherry remove <task>
ddf-cherry status <task>
```

## FAQ

### Why multiple binaries?
It's much easier to manage dotfiles using multiple languages.
Somethimes it's easier to use `bash`, sometimes to use `python`, or any other language

