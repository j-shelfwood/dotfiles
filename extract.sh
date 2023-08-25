#!/bin/bash
# This script extracts the configuration files from your system and (over)rwrites them to the Git repository

DOTFILES_DIR=~/projects/dotfiles

# Shell configuration files
cp ~/.zshrc $DOTFILES_DIR
mv $DOTFILES_DIR/.zshrc $DOTFILES_DIR/zshrc

# Git configuration
cp ~/.gitconfig $DOTFILES_DIR
cp ~/.gitignore_global $DOTFILES_DIR

# Raycast configuration
cp ~/.config/raycast/config.json $DOTFILES_DIR/config.json

# Now let's add all these changes to the Git repository
cd $DOTFILES_DIR
git add .
git commit -m "Backup configuration files"
