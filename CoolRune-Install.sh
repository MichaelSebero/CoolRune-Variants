#!/bin/sh

# License: GNU GPLv3

### OPTIONS AND VARIABLES ###
pacman-key --init

clear

echo '
[universe]
Server = https://universe.artixlinux.org/$arch
Server = https://mirror1.artixlinux.org/universe/$arch
Server = https://mirror.pascalpuffke.de/artix-universe/$arch
Server = https://artixlinux.qontinuum.space/artixlinux/universe/os/$arch
Server = https://mirror1.cl.netactuate.com/artix/universe/$arch
Server = https://ftp.crifo.org/artix-universe/' >> /etc/pacman.conf

pacman -Sy
pacman -S artix-archlinux-support

echo '
# Arch Linux repos
#[testing]
#Include = /etc/pacman.d/mirrorlist
#[core]
#Include = /etc/pacman.d/mirrorlist-arch
[extra]
Include = /etc/pacman.d/mirrorlist-arch
#[community-testing]
#Include = /etc/pacman.d/mirrorlist
[community]
Include = /etc/pacman.d/mirrorlist-arch
#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist
[multilib]
Include = /etc/pacman.d/mirrorlist-arch
' >> /etc/pacman.conf

clear

pacman-key --populate artix
pacman-key --populate archlinux
pacman -Sy
pacman -S --noconfirm --needed kate librewolf flatpak unzip 
flatpak install celluloid gwe libreoffice appimagepool 
curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.tar.gz
curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.tar.gz
cd /home/$USER/
unzip CoolRune-Files.tar.gz -d /
unzip CoolRune-Files.tar.gz
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
yay -S --noconfirm --needed protontricks-git proton-ge-custom-bin xfce-superkey-git simple-mtpfs task-spooler zsh-fast-syntax-highlighting-git mystiq appimagelauncher pamac-nosnap opendoas

