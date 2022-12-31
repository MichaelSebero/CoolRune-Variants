#!/bin/sh

# License: GNU GPLv3

### CoolRune Repositories ###
pacman-key --init && pacman -Sy --noconfirm --needed p7zip && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-2.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && 7z e CoolRune-Pacman-1.7z -o/etc -y && pacman-key --refresh && pacman -Sy --noconfirm --needed artix-keyring archlinux-keyring artix-archlinux-support && pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key FBA220DFC880C036 && pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && 7z e CoolRune-Pacman-2.7z -o/etc -y && pacman-key --populate archlinux artix && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-NVIDIA-Patch.7z && pacman -Syyu --noconfirm --needed &&

# REPO FILES
pacman -S --noconfirm --needed lib32-artix-archlinux-support flatpak kate librewolf python-pip tmux tealdeer jdownloader2 vulkan-icd-loader lib32-vulkan-icd-loader ksysguard liferea gnome-screenshot gnome-keyring gnome-calculator font-manager gwenview gimp gamemode lib32-gamemode filelight fail2ban fail2ban-s6 evince dnscrypt-proxy dnscrypt-proxy-s6 apparmor apparmor-s6 bleachbit blueman unrar bluez-s6 konsole catfish clamav clamav-s6 ark devilspie gufw mugshot macchanger networkmanager networkmanager-s6 nm-connection-editor wine wine-mono winetricks ufw-s6 pcmanfm pavucontrol qbittorrent redshift pulseaudio-alsa psensor ntfs-3g steam lynis sneedacity element-desktop pulsemixer rkhunter yay proton-ge-custom nvidia-dkms nvidia-utils nvidia-utils-s6 lib32-nvidia-utils nvidia-settings protontricks-git mystiq appimagelauncher opendoas linux-tkg-pds linux-tkg-pds-headers pamac-nosnap seahorse &&

# FLATPAK FILES
flatpak install -y io.github.celluloid_player.Celluloid com.leinardi.gwe org.libreoffice.LibreOffice io.github.prateekmedia.appimagepool &&

# PYTHON FILES
pip install psutil python-dateutil protonvpn-cli &&

# CoolRune Last Commands
pacman -R --noconfirm linux linux-headers epiphany xfce4-terminal xfce4-screenshooter parole xfce4-taskmanager mousepad leafpad xfburn ristretto xfce4-appfinder atril artix-branding-base artix-grub-theme mpv xfce4-sensors-plugin xfce4-notes-plugin && 7z x CoolRune-Files.7z -o/ -y && 7z x CoolRune.7z -o/ -y && 7z x CoolRune-NVIDIA-Patch.7z -o/ -y  && chattr +i /etc/hosts && s6-service add default apparmor && s6-db-reload && grub-mkconfig -o /boot/grub/grub.cfg && grub-install && update-grub && read -rep $'!!! Extract CoolRune-Dotfiles.7z in /home/yourusername, enable show hidden files in settings and copy/paste the contents of the newly created CoolRune-Dotfiles file in your /home/yourusername. This file can be found in /home/CoolRune-Files. Press enter to restart your computer when the files are extacted. ' && reboot
