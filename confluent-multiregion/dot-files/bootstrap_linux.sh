#!/bin/bash

echo "Configuring Linux..."

# Install yum apps
#CASKS=(
#    docker
#    flux
#    google-chrome
#    google-drive
#    java
#    slack
#    visual-studio-code
#)

#echo "Installing Linux apps..."
#brew cask install ${CASKS[@]}

# Install Homebrew packages
PACKAGES=(
    docker
)

echo "Installing Linux packages..."
#brew remove --force ${PACKAGES[@]} --ignore-dependencies
dnf install ${PACKAGES[@]} -y

echo "Linux Complete"