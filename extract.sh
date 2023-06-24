#!/bin/bash
# This script extracts the configuration files from your system and (over)rwrites them to the Git repository

DOTFILES_DIR=~/projects/dotfiles

# Shell configuration files
cp ~/.zshrc $DOTFILES_DIR

# VSCode configuration
cp ~/Library/Application\ Support/Code/User/settings.json $DOTFILES_DIR/vscode-settings.json
cp ~/Library/Application\ Support/Code/User/keybindings.json $DOTFILES_DIR/keybindings.json

# Git configuration
cp ~/.gitconfig $DOTFILES_DIR
cp ~/.gitignore_global $DOTFILES_DIR

# PHP and Composer global configuration
cp /usr/local/etc/php/7.4/php.ini $DOTFILES_DIR/php.ini  # replace with your php.ini path
cp ~/.composer/composer.json $DOTFILES_DIR/composer.json

# Laravel Valet configuration
# Add lines here for any specific Valet configuration files you want to include

# Environment variables
cp ~/.env $DOTFILES_DIR/.env

# Raycast configuration
cp ~/.config/raycast/config.json $DOTFILES_DIR/config.json

# Now let's add all these changes to the Git repository
cd $DOTFILES_DIR
git add .
git commit -m "Backup configuration files"
