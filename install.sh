#!/bin/bash

DOTFILES_DIR=~/dotfiles

# Confirm the user wants to restore settings
read -p "This will overwrite existing settings on your system using symlinks. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then

  # Shell configuration files
  ln -sf $DOTFILES_DIR/zshrc ~/.zshrc

  # Laravel Valet configuration
  # Add lines here for any specific Valet configuration files you want to include

  # Raycast configuration
  ln -sf $DOTFILES_DIR/config.json ~/.config/raycast/config.json

  echo "Settings restored successfully!"
else
  echo "Restoration cancelled. Your settings have not been changed."
fi
