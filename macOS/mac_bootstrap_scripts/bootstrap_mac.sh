#!/bin/bash

# Run all steps to bootstrap a new Mac

# Step 1: Create Symlinks
~/.dotfiles/macOS/mac_bootstrap_scripts/scripts/create_symlinks.sh

# Step 2: Import Preferences
~/.dotfiles/macOS/mac_bootstrap_scripts/preferences/import_preferences.sh

# Step 3: Install Homebrew Packages
~/.dotfiles/macOS/mac_bootstrap_scripts/scripts/install_packages.sh

# Step 4: Add cron job
~/.dotfiles/macOS/mac_bootstrap_scripts/scripts/add_cron_job.sh
