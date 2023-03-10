#!/bin/sh

# License: GNU GPLv3

# FIRST COMMANDS AND COOLRUNE IMPORT
su -c ' pacman-key --init && pacman -Sy --noconfirm --needed p7zip glibc && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-1.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Pacman-2.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && 7z e CoolRune-Pacman-1.7z -o/etc -y && pacman-key --refresh && pacman -Sy --noconfirm --needed artix-keyring archlinux-keyring artix-archlinux-support && pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key FBA220DFC880C036 && pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && 7z e CoolRune-Pacman-2.7z -o/etc -y && pacman-key --populate archlinux artix && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && pacman -Syyu --noconfirm --needed &&

# PACKAGES
pacman -S --noconfirm --needed lib32-artix-archlinux-support base-devel flatpak kate librewolf python-pip tmux tealdeer jdownloader2 vulkan-icd-loader lib32-vulkan-icd-loader ksysguard liferea gnome-screenshot gnome-keyring gnome-calculator font-manager gwenview vim gimp gamemode lib32-gamemode filelight fail2ban fail2ban-s6 evince dnscrypt-proxy dnscrypt-proxy-s6 apparmor apparmor-s6 bleachbit blueman unrar bluez-s6 konsole catfish clamav clamav-s6 ark devilspie gufw mugshot macchanger networkmanager networkmanager-s6 nm-connection-editor wine wine-mono winetricks ufw-s6 pcmanfm pavucontrol qbittorrent redshift pulseaudio-alsa psensor ntfs-3g steam lynis sneedacity element-desktop pulsemixer rkhunter paru proton-ge-custom lib32-mesa vulkan-intel lib32-vulkan-intel protontricks-git mystiq appimagelauncher opendoas linux-tkg-pds linux-tkg-pds-headers pamac-nosnap gnome-disk-utility &&

# FLATPAK PACKAGES
flatpak install -y io.github.celluloid_player.Celluloid org.libreoffice.LibreOffice io.github.prateekmedia.appimagepool org.gnome.seahorse.Application/x86_64/stable &&

# PYTHON MODULES
pip install psutil python-dateutil pydub &&

# LAST COMMANDS AND COOLRUNE INSTALL
pacman -R --noconfirm linux linux-headers epiphany xfce4-terminal xfce4-screenshooter parole xfce4-taskmanager mousepad leafpad xfburn ristretto xfce4-appfinder atril artix-branding-base artix-grub-theme mpv xfce4-sensors-plugin xfce4-notes-plugin && 7z x CoolRune-Files.7z -o/ -y && 7z x CoolRune.7z -o/ -y && 7z x CoolRune-Dotfiles.7z -o/home/$USER -y && chattr +i /etc/hosts && s6-service add default apparmor && s6-service add default fail2ban && s6-service add default NetworkManager && s6-service add default dnscrypt-proxy && s6-service add default ufw && rm /etc/s6/adminsv/default/contents.d/connmand && pacman -R --noconfirm connman && s6-db-reload && grub-mkconfig -o /boot/grub/grub.cfg && chmod 777 /home/$USER/.librewolf -R && chmod 777 /home/$USER/.config -R && grub-install && update-grub && chmod 777 /home/$USER/.var/io.github.celluloid_player.Celluloid -R && chmod 777 /home/$USER/.var/app -R && rm -rf /home/CoolRune-Files && reboot '
