#!/bin/bash

export_dir=~/.dotfiles/macOS/mac_bootstrap_scripts/preferences

# Import all preferences
for plist in $export_dir/plist/*.plist; do
    domain=$(basename $plist .plist)
    defaults import $domain $plist
done
