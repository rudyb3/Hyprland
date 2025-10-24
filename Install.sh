#!/bin/bash

##Variables

distributionSelection=""
pacmanSHA=$(sha1sum conf/pacman.conf | awk '{print $1}')

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

cp /etc/pacman.conf  /etc/pacman.bak -f
cp conf/pacman.conf /etc/pacman.conf -f

actualSHA=$(sha1sum /etc/pacman.conf | awk '{print $1}')

if [ "$actualSHA" = "$pacmanSHA" ]; then
    echo "Pacman Configuration Modified Successfully"
else
    echo "Failed to modify Pacman Configuration"
    exit
fi


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

