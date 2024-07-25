#!/bin/bash

#Google Chrome
sudo apt install libu2f-udev #chrome need this
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome.deb
sudo dpkg -i google-chrome.deb
rm google-chrome.deb # Clean up
sudo apt install -f  # Install dependencies

#Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt install brave-browser

#Zed
curl -f https://zed.dev/install.sh | sh

# Install LibreOffice
sudo apt install -y libreoffice

# Install VLC
sudo apt install -y vlc

# Install CopyQ and Flameshot from apt
sudo apt install -y copyq flameshot

# xdm
sudo wget https://github.com/subhra74/xdm/releases/download/8.0.29/xdman_gtk_8.0.29_amd64.deb -O xdm.deb
sudo dpkg -i xdm.deb
sudo rm xdm.deb # Clean up

### Install via Flatpak
#Telegram
sudo flatpak install -y flathub org.telegram.desktop

#Discord
sudo flatpak install -y flathub com.discordapp.Discord

#Thunderbird
sudo flatpak install -y flathub org.mozilla.Thunderbird

#Obsidian
sudo flatpak install -y flathub md.obsidian.Obsidian

#TeXstudio
sudo flatpak install -y flathub org.texstudio.TeXstudio

### Install VSCode via Snap
#VSCode
sudo snap install code --classic

###Nix pkg
#Firefox
nix-env -iA nixpkgs.firefox

#yazi
nix-env -iA nixpkgs.yazi


