#!/bin/bash

export_dir=~/.dotfiles/macOS/mac_bootstrap_scripts/preferences/plist

# List of domains to exclude
exclude_domains=(
    "com.apple.KeychainAccess"
    "com.apple.security.keychain"
    "com.apple.internetaccounts"
    "com.apple.accountsd"
    "com.apple.iCloudHelper"
    "com.apple.ids.service"
    "com.apple.imagent"
    "com.apple.imservice"
    "com.apple.security"
    "com.apple.cloudd"
    "com.apple.CloudDocs"
    "com.apple.preferences.icloud"
    "com.apple.familycircled"
    "com.apple.Family"
    "com.apple.appleaccount"
    "com.apple.findmy"
    "com.apple.coreservices.appleidauthentication"
    "com.apple.coreservices.cloudkeychainproxy"
    "com.apple.icloud.fmip"
    "com.apple.icloud.findmydevicelock"
    "com.apple.icloud.searchpartyuser"
)

# Convert the array to a pattern string
exclude_pattern=$(printf "|%s" "${exclude_domains[@]}")
exclude_pattern=${exclude_pattern:1}

# Export all preferences except excluded ones
for domain in $(defaults domains | tr ',' '\n' | grep -Ev "$exclude_pattern"); do
    mkdir -p $export_dir
    defaults export $domain $export_dir/$domain.plist
done

