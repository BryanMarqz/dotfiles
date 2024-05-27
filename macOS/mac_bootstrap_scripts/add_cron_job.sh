#!/bin/bash

# Path to the brew_dump.sh script
SCRIPT_PATH="$HOME/brew_dump.sh"

# Cron job to run the brew_dump.sh script daily at 2 AM
CRON_JOB="0 0 * * * $SCRIPT_PATH"

# Check if the cron job already exists
(crontab -l 2>/dev/null | grep -q "$SCRIPT_PATH") && echo "Cron job already exists" || (crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -
