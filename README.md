dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

## Install

It installs Homebrew and Chezmoi. After the installation `chezmoi` will be initialized.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/khashayar/dotfiles/main/install.sh)"
```

## Manual Install

Prerequisite: Homebrew & Chezmoi

```shell
# Setup
chezmoi init https://github.com/chimurai/dotfiles.git

# Configure ~/.config/chezmoi/chezmoi.toml
chezmoi init
```
