#!/bin/sh

echo "Username?"

read username

set -x
set -e

top_dir=$(pwd)

# doas
apk add doas

echo "permit persist :wheel" >> /etc/doas.conf

# dwm
doas setup-xorg-base

doas apk add make gcc musl-dev libx11-dev libxft-dev libxinerama-dev dbus dbus-x11

doas rc-update add dbus

doas rc-service dbus start

# st
doas apk add ncurses font-dejavu

touch /home/$username/.xinitrc

echo "exec dwm" > /home/$username/.xinitrc

mkdir /home/$username/suckless

cd /home/$username/suckless

wget https://dl.suckless.org/dwm/dwm-6.5.tar.gz
tar -xvzf dwm-6.5.tar.gz
cd dwm-6.5
doas make clean install

cd ..

wget https://dl.suckless.org/tools/dmenu-5.3.tar.gz
tar -xvzf dmenu-5.3.tar.gz
cd dmenu-5.3
doas make clean install

cd ..

wget https://dl.suckless.org/st/st-0.9.2.tar.gz
tar -xvzf st-0.9.2.tar.gz
cd st-0.9.2
doas make clean install

cd $top_dir
mv ./setup.sh /home/$username/

cd /home/$username/
doas chown -R $username ./*
doas chown $username ./.xinitrc

