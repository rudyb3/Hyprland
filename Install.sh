#!/bin/bash

### Install Script for custom installation of Neovim

## Variables
# Const
GREEN="$(tput setaf 2)"
BLUE="$(tput setaf 4)"
SKY_BLUE="$(tput setaf 6)"
RESET="$(tput sgr0)"
# Env
USERNAME=$(whoami)
PACKAGES=("neovim" "git" "luarocks")

## Functions

_isInstalled() {
    package="$1"
    check="$(sudo pacman -Qs "${package}" | grep "local" | grep "${package} ")"
    if [ -n "${check}" ]; then
        echo 0
        return
    fi
    echo 1
    return
}

# Check Packages

for PACKAGES; do
    if [[ $(_isInstalled "${PACKAGES}") == 0 ]]; then
        echo ":: ${PACKAGES} is already installed."
    else
        echo ":: Installing ${PACKAGES}"
        pacman --noconfirm -S "${PACKAGES}"
    fi
done

# Ask wich file to install

PS3='Select choice: '
select opt  in "1. KICKSTART.NVIM" "2. CUSTOM"; do
     case $opt in
        "1. KICKSTART.NVIM")
            cp "configs/nvim/init.lua" "/home/$USERNAME/.config/nvim/init.lua"
            break;;
        "2. CUSTOM")
            cp -r "configs/nvim-custom" "/home/$USERNAME/.config/nvim"
            break;;
    esac
done

clear