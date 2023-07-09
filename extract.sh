#!/bin/bash
# This script extracts the configuration files from your system and (over)rwrites them to the Git repository

DOTFILES_DIR=~/projects/dotfiles

# Shell configuration files
cp ~/.zshrc $DOTFILES_DIR
mv $DOTFILES_DIR/.zshrc $DOTFILES_DIR/zshrc

# VSCode configuration
cp ~/Library/Application\ Support/Code/User/settings.json $DOTFILES_DIR/vscode-settings.json
cp ~/Library/Application\ Support/Code/User/keybindings.json $DOTFILES_DIR/keybindings.json

# Git configuration
cp ~/.gitconfig $DOTFILES_DIR
cp ~/.gitignore_global $DOTFILES_DIR

# Raycast configuration
cp ~/.config/raycast/config.json $DOTFILES_DIR/config.json

# Now let's add all these changes to the Git repository
cd $DOTFILES_DIR
git add .
git commit -m "Backup configuration files"
