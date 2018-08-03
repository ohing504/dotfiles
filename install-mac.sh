#!/bin/bash

set -euo pipefail

REPO="https://github.com/ohing504/dotfiles.git"
TARGET_DIR="$HOME/dotfiles"

# Install Command Line Tools for Xcode
if ! xcode-select --print-path &> /dev/null; then
  echo "Installing Command Line Tools"

  # Prompt user to install the Command Line Tools
  xcode-select --install &> /dev/null

  # Wait until the Command Line Tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  echo "Done"
else
  echo "Command Line Tools are already installed"
fi

# Install Homebrew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Done"
else
  echo "Homebrew is already installed"
fi

# Install Ansible
if test ! $(which ansible); then
  echo "Installing Ansible"
  brew install ansible
  echo "Done"
else
  echo "Ansible is already installed"
fi

# Clone the repository
if [ ! -d "$TARGET_DIR" ]; then
  echo "Cloning playbook repository"
  mkdir -p "$TARGET_DIR" && git clone $REPO "$TARGET_DIR"
else
  echo "The dotfiles repository is already in place"
fi

cd "$TARGET_DIR"

echo "Running the playbook"
ansible-playbook main.yml
