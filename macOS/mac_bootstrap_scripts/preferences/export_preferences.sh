#!/bin/bash

export_dir=~/.dotfiles/macOS/mac_bootstrap_scripts/preferences/plist

# Export all preferences
for domain in $(defaults domains | tr ',' '
'); do
    defaults export $domain $export_dir/$domain.plist
done
