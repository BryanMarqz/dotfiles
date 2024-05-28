#!/bin/bash

# Run all steps to bootstrap a new Mac

# Step 1: Create Symlinks
./scripts/create_symlinks.sh

# Step 2: Import Preferences
./../preferences/import_preferences.sh

# Step 3: Install Homebrew and Packages
./scripts/install_homebrew_and_packages.sh

# Step 4: Add cron job
./scripts/add_cron_job.sh
