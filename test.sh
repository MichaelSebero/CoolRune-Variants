#!/bin/sh

# License: GNU GPLv3

### CoolRune Repositories ###
pacman-key --init && pacman -Sy --noconfirm --needed p7zip && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-2.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune.7z &&
# CoolRune Last Commands
7z x CoolRune-Files.7z -o/ -y && 7z x CoolRune.7z -o/ -y && 7z x CoolRune-NVIDIA-Patch.7z -o/ -y && 7z x CoolRune-Dotfiles.7z -o/home/$USER -y && update-grub && s6-db-reload && reboot
