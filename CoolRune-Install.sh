#!/bin/sh

# License: GNU GPLv3

### Enabling CoolRune Repositories ###

pacman-key --init && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-2.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && 7z e CoolRune-Pacman-1.7z -o/etc -y && pacman -Sy --noconfirm --needed artix-keyring archlinux-keyring artix-archlinux-support && pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key FBA220DFC880C036 && pacman -U --noconfirm --needed 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && 7z e CoolRune-Pacman-2.7z -o/etc -y && pacman-key --populate archlinux artix && pacman -Syyu --noconfirm --needed


