#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install software listed in the Brewfile
brew bundle --file ~/.dotfiles/macOS/Brewfile
