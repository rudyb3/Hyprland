#!/bin/bash
clear

# -------------------------------- 
# Configure script
# --------------------------------

# Variables

downloadFolder="$HOME/.riceing"

# Functions

if [ ! -d $download_folder ]; then
    mkdir -p $download_folder
fi

_installYay() {
    _installPackages "base-devel"
    SCRIPT=$(realpath "$0")
    temp_path=$(dirname "$SCRIPT")
    git clone https://aur.archlinux.org/yay.git $download_folder/yay
    cd $download_folder/yay
    makepkg -si
    cd $temp_path
    echo ":: yay has been installed successfully."
}

# Prepare Environment

_installYay

#cd hyprland

cp .config ~/.config -rf