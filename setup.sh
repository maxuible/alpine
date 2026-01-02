#!/bin/sh

set -x

dwm_version="6.6"
dmenu_version="5.4"
st_version="0.9.3"

doas adduser $USER audio
doas adduser $USER video # THIS IS CONSIDER A SECURITY RISK
doas adduser $USER input

doas setup-xorg-base

# user configs pre-reqs
doas apk add xrandr xsetroot 

# audio
doas apk add alsaconf

# dwm
doas setup-xorg-base

doas apk add make gcc musl-dev libx11-dev libxft-dev libxinerama-dev

# st
doas apk add ncurses font-dejavu

# download suckless software WM/DE

cd /opt

doas wget "https://dl.suckless.org/dwm/dwm-${dwm_version}.tar.gz"
doas tar -xvzf dwm-$dwm_version.tar.gz
doas rm /opt/dwm-$dwm_version.tar.gz

doas wget "https://dl.suckless.org/tools/dmenu-${dmenu_version}.tar.gz"
doas tar -xvzf dmenu-$dmenu_version.tar.gz
doas rm /opt/dmenu-$dmenu_version.tar.gz

doas wget "https://dl.suckless.org/st/st-${st_version}.tar.gz"
doas tar -xvzf st-$st_version.tar.gz
doas rm /opt/st-$st_version.tar.gz

sh ~/alpine/config/mvconfig.sh

cd /opt/dwm-$dwm_version
doas make clean install

cd /opt/dmenu-$dmenu_version
doas make clean install

cd /opt/st-$st_version
doas make clean install


cd

