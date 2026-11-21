
#!/bin/bash

set -e

echo "Checking distribution..."

if ! grep -qi '^ID=fedora' /etc/os-release; then
    echo "Error: This script is intended for Fedora."
    exit 1
fi

echo "Updating repositories..."
sudo dnf upgrade --refresh -y

echo "Installing packages..."

PACKAGES=(
    acpi
    kitty
    htop
    picom
    xdg-user-dirs
    dejavu-sans-fonts
    thunar
    wget
    wpa_supplicant
    nano
    NetworkManager
    network-manager-applet
    i3
    i3lock
    i3status
    feh
    pipewire-pulseaudio
    fonts-rpm-mono
    rofi
    git
    cava
    xorg-x11-server-Xorg
    xorg-x11-xinit
    xterm
)

sudo dnf install -y "${PACKAGES[@]}"

echo "Enabling NetworkManager..."
sudo systemctl enable --now NetworkManager

echo "Creating user directories..."
xdg-user-dirs-update

echo "Installation completed!"

echo "The cybersecurity packages will not be installed by default."
