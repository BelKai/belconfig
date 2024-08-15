sudo apt remove --purge -y xed transmission transmission-common transmission-gtk seahorse sticky celluloid
sudo apt autoremove --purge -y
sudo apt purge -y $(dpkg -l | grep '^rc' | awk '{print $2}')
sudo apt clean


