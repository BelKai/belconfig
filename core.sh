#!/bin/bash

# Update and upgrade the system
sudo apt update
sudo apt upgrade -y

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput
sudo apt install -y build-essential 
sudo apt install -y intel-microcode 
sudo apt install -y xfce4 xfce4-goodies
#sudo apt install gnome-icon-theme
#{debian}  sudo apt-get install lxqt-config

# Install and enable LightDM with GTK greeter settings
sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

#fastfetch
sudo apt-get install fastfetch

# Install additional fonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus xfonts-intl-arabic
sudo apt install fonts-roboto ttf-mscorefonts-installer #google sites use those

#synaptic
sudo apt-get install synaptic

# Curl
sudo apt install -y curl wget

# Install Snap
sudo apt install -y snap

# Install Flatpak
sudo apt install -y flatpak

# Add Flathub repository for Flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Appimg manager
flatpak install flathub -y it.mijorus.gearlever

# Install Nix package manager
curl -L https://nixos.org/nix/install | sh
# Initialize Nix (this adds Nix to your environment)
. ~/.nix-profile/etc/profile.d/nix.sh

# Install Podman (alternative to Docker)
sudo apt install -y podman
# Install Distrobox using Nix
nix-env -iA nixpkgs.distrobox

# Remove unnecessary packages
sudo apt autoremove -y

# Reboot the system (optional)
sudo reboot
