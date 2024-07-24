#!/bin/bash

# Update and upgrade the system
sudo apt update
sudo apt upgrade -y

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput
sudo apt install -y build-essential 
sudo apt install -y intel-microcode 
sudo apt install -y xfce4 xfce4-goodies

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome.deb
sudo dpkg -i google-chrome.deb
sudo apt install -f  # Install dependencies

# Install Snap
sudo apt install -y snapd

# Install Flatpak
sudo apt install -y flatpak

# Add Flathub repository for Flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install LibreOffice
sudo apt install -y libreoffice

# Install VLC
sudo apt install -y vlc

# Install CopyQ and Flameshot from apt
sudo apt install -y copyq flameshot

# Install Telegram via Flatpak
sudo flatpak install -y flathub org.telegram.desktop

# Install Discord via Flatpak
sudo flatpak install -y flathub com.discordapp.Discord

# Install VSCode via Snap
sudo snap install code --classic

# Install Firefox via Snap
sudo snap install firefox

# Install additional fonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus

# Install and enable LightDM with GTK greeter settings
sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Install rofi and geany
sudo apt install -y rofi geany

# Clean up
rm google-chrome.deb

# Remove unnecessary packages
sudo apt autoremove -y

# Reboot the system (optional)
sudo reboot
