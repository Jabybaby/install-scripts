#!/bin/sh

git clone https://github.com/yeyushengfan258/We10XOS-kde.git
cd We10XOS-kde
./install.sh

cd Layout
mv plasma-org.kde.plasma.desktop-appletsrc ~/.config/plasma-org.kde.plasma.desktop-appletsrc

cd ..
rm -rf We10XOS-kde

git clone https://github.com/Jabybaby/We10XOS-widgets.git
cd We10XOS-widgets
./install.sh
cd ..
rm -rf We10XOS-widgets

