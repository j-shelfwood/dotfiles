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
