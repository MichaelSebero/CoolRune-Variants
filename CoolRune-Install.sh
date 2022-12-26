#!/bin/sh

# License: GNU GPLv3

### CoolRune Install
pacman -Sy git
git clone https://github.com/MichaelSebero/CoolRune-Files.git

cd CoolRune-Files/Desktop/CoolRune-Files-Install.sh
sh CoolRune-Files-Install.sh
exit
cd CoolRune-Files/Desktop/CoolRune-NVIDIA-Patch.sh
sh CoolRune-NVIDIA-Patch.sh
exit

