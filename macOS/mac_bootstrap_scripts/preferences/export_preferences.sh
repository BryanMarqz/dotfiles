#!/bin/bash

export_dir=~/.dotfiles/macOS/mac_bootstrap_scripts/preferences/plist

# List of domains to exclude
exclude_domains=(
    "com.apple.KeychainAccess"
    "com.apple.security.keychain"
    "com.apple.internetaccounts"
    "com.apple.accountsd"
    "com.apple.FaceTime"
)

# Convert the array to a pattern string
exclude_pattern=$(printf "|%s" "${exclude_domains[@]}")
exclude_pattern=${exclude_pattern:1}

# Export all preferences except excluded ones
for domain in $(defaults domains | tr ',' '\n' | grep -Ev "$exclude_pattern"); do
    mkdir -p $export_dir
    defaults export $domain $export_dir/$domain.plist
done
