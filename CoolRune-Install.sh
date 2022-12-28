#!/bin/sh

# License: GNU GPLv3

### CoolRune Repositories ###

pacman-key --init && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-2.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && 7z e CoolRune-Pacman-1.7z -o/etc -y && pacman-key --refresh && pacman -Sy --noconfirm --needed artix-keyring archlinux-keyring artix-archlinux-support && pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key FBA220DFC880C036 && pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && 7z e CoolRune-Pacman-2.7z -o/etc -y && pacman-key --populate archlinux artix && pacman -Syyu --noconfirm --needed

### CoolRune Install List ###

&& pacman -S --noconfirm --needed lib32-artix-archlinux-support flatpak kate librewolf python-pip tmux
&& flatpak install celluloid gwe libreoffice appimagepool 
&& pip install psutil python-dateutil 
&& yay -S --noconfirm --needed protontricks-git proton-ge-custom-bin xfce-superkey-git simple-mtpfs task-spooler zsh-fast-syntax-highlighting-git mystiq appimagelauncher pamac-nosnap opendoas




### CoolRune Last Commands ###
&& 7z e CoolRune-Files.7z -o/ && 7z e CoolRune-NVIDIA-Patch.7z -o/ && 7z e CoolRune-Dotfiles.7z -o/home/$USER &&

&& pacman -R linux linux headers 
&& update-grub && s6-db-reload

