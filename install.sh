#!/bin/sh -eu

sudo apt update && sudo apt upgrade -y



sudo systemctl stop snapd.service snapd.socket snapd.seeded.service  
sudo systemctl disable snapd.service snapd.socket snapd.seeded.service

sudo apt autoremove --purge snapd  -y

sudo rm -rf /var/cache/snapd/  
sudo rm -rf ~/snap

sudo apt-mark hold snapd

sudo apt update -y

sudo ubuntu-drivers install -y

sudo apt install ubuntu-restricted-extras -y



# Apps

sudo apt install libreoffice libreoffice-l10n-es libreoffice-help-es -y

sudo apt install virtualbox -y

sudo apt install timeshift -y

# Flatpak  
sudo apt install flatpak plasma-discover-backend-flatpak -y  
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.github.tchx84.Flatseal -y

flatpak install [https://dl.flathub.org/repo/appstream/io.github.yuki\_iptv.yuki-iptv.flatpakref](https://dl.flathub.org/repo/appstream/io.github.yuki%5C_iptv.yuki-iptv.flatpakref) -y

flatpak install flathub org.telegram.desktop -y

flatpak install flathub com.visualstudio.code -y

flatpak install flathub com.sublimemerge.App -y

flatpak install flathub eu.betterbird.Betterbird -y

flatpak install flathub com.bitwarden.desktop -y

flatpak install flathub org.kde.krdc -y

flatpak install flathub org.mozilla.firefox -y

flatpak install flathub com.ultimaker.cura -y

flatpak install flathub org.gnome.DejaDup -y



flatpak install flathub org.inkscape.Inkscape -y

flatpak install flathub org.audacityteam.Audacity -y

flatpak install flathub com.obsproject.Studio -y
