#!/bin/sh

pacman -S --needed  base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
