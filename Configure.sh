# -------------------------------- 
# Configure script
# --------------------------------

# Prepare Environment

pacman -S --needed git base-devel --noconfirm && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -sri

# Download Config
git clone https://github.com/rudyb3/hyprland

cd hyprland

cp .config ~/.config -rf