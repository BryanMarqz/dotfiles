## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```sh
xcode-select --install
```
2. Clone repo into new hidden directory.

### Set up Git and use SSH...
git clone git@github.com:BryanMarqz/dotfiles ~/.dotfiles

### Bootstrap Scripts for various OS.

This repository contains scripts to automate the bootstrapping of a new machines using dotfiles and package managers.

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
