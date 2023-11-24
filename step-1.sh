#!/bin/bash
cd ~ 
sudo pacman -Syyuu git base-devel wpa_supplicant bluez
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

cd ~ 
yay -Syyuu zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

cd ~
git clone https://aur.archlinux.org/snapd.git 
cd snapd 
makepkg -si 
sudo systemctl enable --now snapd.socket && sudo ln -s /var/lib/snapd/snap /snap
sudo snap install snap-store
sudo pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo reboot