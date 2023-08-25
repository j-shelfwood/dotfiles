#!/bin/bash

# Update macOS and install Command Line Tools
echo "Updating macOS. If this requires a restart, run the script again."
softwareupdate -i -a
xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to shell
echo "Adding Homebrew to the shell..."
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create folders
echo "Creating ~/Projects and ~/Code-Reviews..."
mkdir -p ~/Projects ~/Code-Reviews

# Install cask applications
echo "Installing applications..."
brew install --cask warp
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask setapp
brew install --cask mattermost
brew install --cask notion
brew install --cask 1password
brew install --cask raycast
brew install --cask google-chrome
brew install --cask discord
brew install --cask zoom
brew install --cask obsidian
brew install --cask spotify

echo "All done!"
