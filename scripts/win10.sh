#!/bin/sh

git clone https://github.com/yeyushengfan258/We10XOS-kde.git
cd We10XOS-kde
./install.sh
cd ..
rm -rf We10XOS-kde

git clone https://github.com/yeyushengfan258/We10X-icon-theme.git
cd We10X-icon-theme
./install.sh -black -dark
cd ..
rm -rfWe10X-icon-theme

git clone https://github.com/Jabybaby/We10XOS-widgets.git
cd We10XOS-widgets
./install.sh
cd ..
rm -rf We10XOS-widgets

lookandfeeltool -a com.github.yeyushengfan258.We10XOS-dark
