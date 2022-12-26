#!/bin/sh

# License: GNU GPLv3

### OPTIONS AND VARIABLES ###
pacman -Sy git
git clone https://github.com/MichaelSebero/CoolRune-Files.git
/home/$USER/CoolRune-Files/Desktop/CoolRune-Files-Install.sh
/home/$USER/CoolRune-Files/Desktop/CoolRune-NVIDIA-Patch.sh
pacman -Sy whiptail

### FUNCTIONS ###

welcomemsg() {
	whiptail --title "CoolRune" \
		--msgbox "Welcome to the CoolRune setup\\n\\nThis script will automatically install CoolRune on your computer.\\n\\" 10 60

	whiptail --title "CoolRune" --yes-button "All ready!" \
		--no-button "Return..." \
		--yesno "Be sure the computer you are using has current pacman updates and refreshed Arch keyrings.\\n\\nIf it does not, the installation of some programs might fail." 8 70
}

InstallingCoolRune() {
	whiptail --infobox "Installing CoolRune" 7 40
		pacman --noconfirm -Sy artix-keyring >/dev/null 2>&1
		;;

		pacman	artix-archlinux-support >/dev/null 2>&1

		pacman-key --populate artix >/dev/null 2>&1
		pacman-key --populate archlinux >/dev/null 2>&1
		;;
	esac
}
