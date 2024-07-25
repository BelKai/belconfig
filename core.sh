#!/bin/bash

# Update and upgrade the system
sudo apt update
sudo apt upgrade -y

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput
sudo apt install -y build-essential 
sudo apt install -y intel-microcode 
sudo apt install -y xfce4 xfce4-goodies
sudo apt install gnome-icon-theme

# Curl
sudo apt install curl

# Install wget
sudo apt install wget

# Install Snap
sudo apt install -y snapd

# Install Flatpak
sudo apt install -y flatpak

# Add Flathub repository for Flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install additional fonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus

# Install and enable LightDM with GTK greeter settings
sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Install rofi and geany
sudo apt install -y rofi geany

# Install Nix package manager
curl -L https://nixos.org/nix/install | sh

# Initialize Nix (this adds Nix to your environment)
. ~/.nix-profile/etc/profile.d/nix.sh

# Install Distrobox using Nix
nix-env -iA nixpkgs.distrobox

# Install Podman (alternative to Docker)
sudo apt install -y podman

# Create an Arch-based Distrobox container
distrobox-create --name arch --image docker.io/library/archlinux:latest --yes

# Enter the container and update packages
distrobox-enter arch -- bash -c "yes | sudo pacman -Syu && yes | sudo pacman -S zed"

# Remove unnecessary packages
sudo apt autoremove -y

# Stop unnecessary services
sudo systemctl mask bluetooth.service

# Reboot the system (optional)
sudo reboot
