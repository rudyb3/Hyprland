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

# Check if nvim is installed

if pacman -Q | grep -w 'neovim'; then
    echo "NeoVim is installed"
else
    echo "NeoVim is not installed"
    echo "Installing NeoVim"
    pacman -S neovim
fi

# Check dependencies

if pacman -Q | grep -w 'git'; then
    echo "Git is installed"
else
    echo "Git is not installed"
    echo "Installing Git"
    pacman -S git
fi

if pacman -Q | grep -w 'luarocks'; then
    echo "luarocks is installed"
else
    echo "luarocks is not installed"
    echo "Installing luarocks"
    pacman -S luarocks
fi


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