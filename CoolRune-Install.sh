#!/bin/sh

# License: GNU GPLv3

### OPTIONS AND VARIABLES ###

pacman-key --init && pacman -Sy --noconfirm --needed unzip && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.zip && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.zip && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.zip && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.zip && unzip -o CoolRune-Pacman-1.zip -d /etc && pacman -Sy --noconfirm --needed archlinux-keyring artix-keyring artix-archlinux-support && pacman-key --populate archlinux artix && pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key FBA220DFC880C036 && pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && unzip -o CoolRune-Pacman-2.zip -d /etc && pacman -Sy

