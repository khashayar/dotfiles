#!/bin/bash

set -eufo pipefail

echo ""
echo "🤚  This script will uninstall .dotfiles for you."
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'


# Uninstall Homebrew
command -v brew >/dev/null 2>&1 && \
  (echo '🍺  Uninstalling Homebrew' && \
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" && \
  sudo rm -rf /opt/homebrew/)

# Uninstall Oh-My-Zsh
if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
  (echo '💰  Uninstalling oh-my-zsh' && uninstall_oh_my_zsh)
fi

# Uninstall chezmoi
command -v chezmoi >/dev/null 2>&1 && \
  (echo '👊  Uninstalling chezmoi' && chezmoi purge)

echo ""
echo "Done."
