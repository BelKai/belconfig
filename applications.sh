#!/bin/bash

###System
#yazi
nix-env -iA nixpkgs.yazi
#gparted
sudo apt install gparted -y

###Media
#MPV
sudo curl --output-dir /etc/apt/trusted.gpg.d -O https://apt.fruit.je/fruit.gpg
echo "deb http://apt.fruit.je/debian bookworm mpv" | sudo tee /etc/apt/sources.list.d/fruit.list
sudo apt update #To update the list
sudo apt install mpv
#VLC
sudo apt install -y vlc

###Office
#Obsidian
sudo flatpak install -y flathub md.obsidian.Obsidian
#TeXstudio
sudo flatpak install -y flathub org.texstudio.TeXstudio
#LibreOffice
sudo apt install -y libreoffice
#CopyQ and Flameshot
sudo apt install -y copyq flameshot

###Coding
##Editore
#Zed
curl -f https://zed.dev/install.sh | sh
#VSCode
sudo snap install code --classic

###Networking
##Browser
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
#Firefox
nix-env -iA nixpkgs.firefox

##Communication
#Telegram
sudo flatpak install -y flathub org.telegram.desktop
#Discord
sudo flatpak install -y flathub com.discordapp.Discord
#Thunderbird
sudo flatpak install -y flathub org.mozilla.Thunderbird
##Downloud
#xdm
sudo wget https://github.com/subhra74/xdm/releases/download/8.0.29/xdman_gtk_8.0.29_amd64.deb -O xdm.deb
sudo dpkg -i xdm.deb
sudo rm xdm.deb # Clean up
