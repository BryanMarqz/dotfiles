#!/bin/bash

# Run all steps to bootstrap a new Mac

# Step 1: Install Command Line Tools
./scripts/install_command_line_tools.sh

# Step 2: Create Symlinks
./scripts/create_symlinks.sh

# Step 3: Import Preferences
./../preferences/import_preferences.sh

# Step 4: Install Homebrew and Packages
./scripts/install_homebrew_and_packages.sh

# Step 5: Add cron job
./scripts/add_cron_job.sh
