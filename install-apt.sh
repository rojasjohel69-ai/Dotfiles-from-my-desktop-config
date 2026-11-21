
#!/bin/bash

set -e

echo "Updating repositories..."
sudo apt update

echo "Installing packages..."

sudo apt install -y \
    acpi \
    kitty \
    htop \
    picom \
    xdg-user-dirs \
    fonts-dejavu \
    thunar \
    wget \
    wpasupplicant \
    nano \
    network-manager \
    network-manager-gnome \
    i3-wm \
    i3lock \
    i3status \
    feh \
    pipewire-pulse \
    pacman-contrib \
    fonts-liberation \
    rofi \
    git \
    cava \
    xorg \
    xterm

echo "Creating user directories..."
xdg-user-dirs-update

echo "Installation completed!"

echo "The cybersecurity packages will not be installed by default."
