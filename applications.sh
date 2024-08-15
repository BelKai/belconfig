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
sudo apt install -y mpv
#VLC
sudo apt install -y vlc

###Office
sudo apt install -y rofi 
sudo apt install -y geany geany-plugin-vimode eany-plugin-treebrowser geany-plugin-overview geany-plugin-git-changebar
#sudo apt install -y geany-plugin-spellcheck geany-plugin-markdown 


#TeXstudio
sudo flatpak install -y flathub org.texstudio.TeXstudio

#CopyQ and Flameshot
sudo apt install -y copyq 
sudo apt install -y flameshot

###CodMeletry
https://www.youtube.com/watch?v=_e_eOBLw0Wg
https://www.youtube.com/watch?v=mhDDjhiBtjYing
##Lang
#python
sudo apt install python3-pip -y

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
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
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
#LibreOffice
flatpak install flathub org.libreoffice.LibreOffice

##Downloud
#xdm
sudo wget https://github.com/subhra74/xdm/releases/download/8.0.29/xdman_gtk_8.0.29_amd64.deb -O xdm.deb
sudo dpkg -i xdm.deb
sudo rm xdm.deb # Clean up

# Create an Arch-based Distrobox container
distrobox-create --name arch --image docker.io/library/archlinux:latest --yes

# Enter the container and update packages
distrobox-enter arch -- bash -c "yes | sudo pacman -Syu && yes | sudo pacman -S zed"
