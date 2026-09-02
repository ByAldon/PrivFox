#!/bin/bash

# Zoek naar de standaard Firefox profielmap op Linux
FIREFOX_DIR="$HOME/.mozilla/firefox"

if [ ! -d "$FIREFOX_DIR" ]; then
    echo "Firefox profielmap niet gevonden."
    exit 1
fi

# Zoek het actieve profiel (meestal eindigend op .default-release of .default)
PROFILE_DIR=$(find "$FIREFOX_DIR" -maxdepth 1 -name "*.default-release" -o -name "*.default" | head -n 1)

if [ -z "$PROFILE_DIR" ]; then
    echo "Geen Firefox profiel gevonden."
    exit 1
fi

# Kopieer user.js naar het profiel
cp user.js "$PROFILE_DIR/user.js"

echo "PrivFox user.js succesvol geïnstalleerd in: $PROFILE_DIR"
