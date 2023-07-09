#!/bin/bash

# Define packages to be installed
PACKAGES=(
    "nesbot/carbon"
    "laravel/installer"
    "laravel-zero/installer"
    "friendsofphp/php-cs-fixer"
    "squizlabs/php_codesniffer"
)

# Install each package
for PACKAGE in ${PACKAGES[@]}
do
    echo "⚡️ Installing $PACKAGE..."
    # Add a few newlines nicely separate the output
    echo -e "\n"
    composer global require $PACKAGE
    echo -e "\n\n\n"
done

# Install Laravel Valet
composer global require laravel/valet
valet install

echo "✨ Installation completed successfully!"
