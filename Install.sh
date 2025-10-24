#!/bin/bash

##Variables

distributionSelection=""

##Distrib Selection

echo "#######################"
echo "# Select Distribution #"
echo "#######################"
echo "# 1. CachyOS          #"
echo "#######################"
echo ""

echo -n "Selection : "

read distributionSelection

##PowerUp pacman

mv conf/pacman.conf /etc/pacman.conf -f

##Default Sofwares

pacman -Sy git codium 

##SDDM

case $distributionSelection in
    1)
    echo "Installing Sugar-Candy theme"
    paru -Sy sddm-theme-sugar-candy
    echo "Applying theme"
    echo "[Theme]" >> /etc/sddm.conf
    echo "Current=Sugar-Candy" >> /etc/sddm.conf
    ;;
esac

##Hyprland

case $distributionSelection in
    1)
    echo "SDDM For CachyOS install"
    ;;
esac

##Waybar

case $distributionSelection in
    1)
    echo "SDDM For CachyOS install"
    ;;
esac

