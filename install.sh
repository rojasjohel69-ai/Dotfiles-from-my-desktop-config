#!/bin/bash
echo "Installing packages..."
sudo pacman -S acpi 
sudo pacman -S kitty
sudo pacman -S htop
sudo pacman -S picom
sudo pacman -S xdg-user-dirs
sudo pacman -S ttf-dejavu
sudo pacman -S thunar
sudo pacman -S wget
sudo pacman -S wpa_supplicant
sudo pacman -S nano
sudo pacman -S network-manager && sudo pacman -S network-manager-applet
sudo pacman -S i3-wm i3lock i3status 
sudo pacman -S feh
sudo pacman -S pipewire-pulse
sudo pacman -S pacman-contrib
sudo pacman -S ttf-liberation
sudo pacman -S rofi
sudo pacman -S git
sudo pacman -S cava
sudo pacman -S yay
sudo pacman -S -xorg-server
sudo pacman -S -xorg-init
sudo pacman -S xterm
echo "The cybersecurity packages will not be installed by default"
