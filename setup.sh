#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
curl -fsSL https://raw.githubusercontent.com/EkeMinusYou/dotfiles/main/install.sh | /bin/bash
brew bundle --file Brewfile
$(brew --prefix)/opt/fzf/install
which zsh | sudo tee -a /etc/shells
chsh -s $(which zsh) $USER
zsh
