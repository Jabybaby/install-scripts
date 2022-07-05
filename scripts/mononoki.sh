#!/bin/sh

./yay.sh
yay -S nerd-fonts-mononoki

echo "font:
  normal:
    family: Mononoki Nerd Font
    style: Regular" >> ~/.alacritty.yml
