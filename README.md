# Dotfiles on macOS

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```


2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles/macOS

# ...or use HTTPS and switch remotes later.
git clone https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles/macOS
```


3. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/macOS/.ssh ~/.ssh
ln -s ~/.dotfiles/macOS/.CFUserTextEncoding ~/.CFUserTextEncoding
ln -s ~/.dotfiles/macOS/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/macOS/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/macOS/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/macOS/.vimrc ~/.vimrc
ln -s ~/.dotfiles/macOS/.zprofile ~/.zprofile
ln -s ~/.dotfiles/macOS/.zshrc ~/.zshrc
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/macOS/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles/macOS && brew bundle
```


## TODO List

- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations.
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot).
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Create a [bootable USB installer for macOS](https://support.apple.com/en-us/HT201372).
