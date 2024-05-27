#!/bin/bash

# Clone the repo using SSH or HTTPS
if [ -n "$1" ] && [ "$1" == "ssh" ]; then
    git clone git@github.com:BryanMarqz/dotfiles.git ~/.dotfiles/macOS
else
    git clone https://github.com/BryanMarqz/dotfiles.git ~/.dotfiles/macOS
fi
