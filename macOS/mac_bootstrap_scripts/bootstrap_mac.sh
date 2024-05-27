#!/bin/bash

# Run all steps to bootstrap a new Mac

# Step 1: Install Command Line Tools
./install_command_line_tools.sh

# Step 2: Clone Repo (use "ssh" as argument to clone using SSH, otherwise will use HTTPS)
./clone_repo.sh ssh

# Step 3: Create Symlinks
./create_symlinks.sh

# Step 4: Install Homebrew and Packages
./install_homebrew_and_packages.sh

# Step 5: Add cron job
./add_cron_job.sh
