#!/bin/sh

# License: GNU GPLv3

### OPTIONS AND VARIABLES ###

pacman-key --init
pacman -Sy --noconfirm --needed unzip
curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.tar.gz
unzip CoolRune-Pacman-1.tar.gz -d /
pacman -Sy --noconfirm --needed archlinux-keyring artix-keyring artix-archlinux-support && pacman-key --populate archlinux artix
pacman -Sy --noconfirm --needed lib32-artix-archlinux-support flatpak kate librewolf python-pip 
flatpak install celluloid gwe libreoffice appimagepool 
curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.tar.gz
curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.tar.gz
curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Dotfiles/master/CoolRune-Dotfiles.tar.gz
cd /home/$USER/
unzip CoolRune-Files.tar.gz -d /
unzip CoolRune-NVIDIA-Patch.tar.gz -d /
unzip CoolRune-Dotfiles.tar.gz
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
yay -S --noconfirm --needed protontricks-git proton-ge-custom-bin xfce-superkey-git simple-mtpfs task-spooler zsh-fast-syntax-highlighting-git mystiq appimagelauncher pamac-nosnap opendoas
pacman -R 

