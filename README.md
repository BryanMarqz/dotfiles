# Bootstrap Scripts for various OS.

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```sh
xcode-select --install
```

2. Clone repo into new hidden directory.

### Set up Git (optional)

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
ls ~/.ssh/id_ed25519.pub
```

```sh
ssh-keygen -t ed25519
```

```sh
cat ~/.ssh/id_ed25519.pub
```

### Clone repo into new hidden directory.

```sh
# Use SSH (if set up)...
git clone git@github.com:eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles
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
