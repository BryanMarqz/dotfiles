# Bootstrap Scripts for various OS.

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```sh
xcode-select --install
```

2. Clone repo into new hidden directory.

### Set up Git

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```sh
brew install git git-credential-manager
```

```sh
git config --global user.name "Your Name"
```

```sh
git config --global user.email "123456789+odin@users.noreply.github.com" # Remember to use your own private GitHub email here.
```

```sh
git config --global init.defaultBranch main
```

```sh
git config --global color.ui auto
```

```sh
git config --global pull.rebase false
```

```sh
echo .DS_Store >> ~/.gitignore_global
```

```sh
git config --global core.excludesfile ~/.gitignore_global
```

```sh
ls ~/.ssh/id_ed25519.pub
```

```sh
ssh-keygen -t ed25519
```

```sh
cat ~/.ssh/id_ed25519.pub
```

### Use SSH

```sh
git clone git@github.com:BryanMarqz/dotfiles ~/.dotfiles
```

### Running the Bootstrap Script

Run the `bootstrap_mac.sh` script to execute all steps at once:

```sh
~/.dotfiles/macOS/mac_bootstrap_scripts/bootstrap_mac.sh
```

### Adding the Cron Job

To automate the Brewfile dump, run the `add_cron_job.sh` script:

```sh
~/.dotfiles/macOS/mac_bootstrap_scripts/scripts/add_cron_job.sh
```

## Steps to Bootstrap a New Linux Machine (in progress)

## Steps to Bootstrap a New Windows Machine (in progress)
