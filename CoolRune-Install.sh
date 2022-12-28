#!/bin/sh

# License: GNU GPLv3

### CoolRune Repositories ###

pacman-key --init && pacman -Sy p7zip mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-2.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && 7z e CoolRune-Pacman-1.7z -o/etc -y && pacman-key --refresh && pacman -Sy --noconfirm --needed artix-keyring archlinux-keyring artix-archlinux-support && pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key FBA220DFC880C036 && pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && 7z e CoolRune-Pacman-2.7z -o/etc -y && pacman-key --populate archlinux artix && pacman -Syyu --noconfirm --needed

### CoolRune Install List ###

# REPO FILES
&& pacman -S --noconfirm --needed lib32-artix-archlinux-support flatpak kate librewolf python-pip tmux tealdeer jdownloader2 vulkan-icd-loader lib32-vulkan-icd-loader ksysguard liferea gnome-screenshot gnome-keyring gnome-calculator font-manager gwenview gimp gamemode lib32-gamemode filelight fail2ban fail2ban-s6 evince dnscrypt-proxy dnscrypt-proxy-s6 apparmor apparmor-s6 bleachbit blueman unrar bluez-s6 konsole catfish clamav clamav-s6 ark devilspie gufw mugshot macchanger networkmanager networkmanager-s6 nm-connection-editor wine wine-mono winetricks ufw-s6 pcmanfm pavucontrol qbittorrent redshift pulseaudio-alsa psensor ntfs-3g steam lynis sneedacity element-desktop pulsemixer moreutils rkhunter nvidia-dkms lib32-nvidia-utils nvidia-utils nvidia-settings nvidia-utils-s6

# FLATPAK FILES
&& flatpak install celluloid gwe libreoffice appimagepool

# PYTHON FILES
&& pip install psutil python-dateutil protonvpn-cli

# AUR REPO FILES
&& yay -S --noconfirm --needed protontricks-git proton-ge-custom-bin xfce-superkey-git simple-mtpfs task-spooler zsh-fast-syntax-highlighting-git mystiq appimagelauncher pamac-nosnap opendoas linux-tkg-pds linux-tkg-pds-headers pamac-nosnap

### CoolRune Last Commands ###
&& 7z e CoolRune-Files.7z -o/ && 7z e CoolRune-NVIDIA-Patch.7z -o/ && 7z e CoolRune-Dotfiles.7z -o/home/$USER &&

&& pacman -R linux linux headers epiphany xfce4-terminal xfce4-screenshooter parole xfce4-taskmanager mousepad leafpad xfburn ristretto xfce4-appfinder atril

&& update-grub && s6-db-reload && reboot

