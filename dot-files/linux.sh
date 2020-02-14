#!/bin/bash

echo "Configuring Linux..."

# Install dnf packages
PACKAGES=(
    docker
    vim
)

echo "Installing Linux packages..."
sudo dnf install ${PACKAGES[@]} -y

echo "Linux Complete"