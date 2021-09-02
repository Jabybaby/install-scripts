#!/bin/sh

sudo ./yay.sh

git clone https://github.com/yeyushengfan258/We10XOS-kde.git
cd We10XOS-kde
./install.sh
cd ..
rm -rf We10XOS-kde

git clone https://github.com/Jabybaby/We10XOS-widgets.git
cd We10XOS-widgets
./install.sh
cd ..
rm -rf We10XOS-widgets

yay -S we10x-icon-theme-git
yay -S xcursor-we10xos 

lookandfeeltool -a com.github.yeyushengfan258.We10XOS-dark
