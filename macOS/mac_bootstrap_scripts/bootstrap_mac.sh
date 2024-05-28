#!/bin/bash

# Run all steps to bootstrap a new Mac

# Step 1: Install Command Line Tools
./scripts/install_command_line_tools.sh

# Step 2: Clone Repo (use "ssh" as argument to clone using SSH, otherwise will use HTTPS)
./scripts/clone_repo.sh ssh

# Step 3: Create Symlinks
./scripts/create_symlinks.sh

# Step 4: Import Preferences
./../preferences/import_preferences.sh

# Step 5: Install Homebrew and Packages
./scripts/install_homebrew_and_packages.sh

# Step 6: Add cron job
./scripts/add_cron_job.sh
