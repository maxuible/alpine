#!/bin/sh

set -e
set -x

dwm_version="6.5"
dmenu_version="5.3"
st_version="0.9.2"

ln -s ~/alpine/config/ashrc     ~/.ashrc
ln -s ~/alpine/config/profile   ~/.profile
ln -s ~/alpine/config/xinitrc   ~/.xinitrc
ln -s ~/alpine/config/vimrc     ~/.vimrc

ln -s ~/alpine/config/st/config.h     /opt/st-$st_verison/config.h
ln -s ~/alpine/config/dwm/config.h    /opt/st-$dwm_verison/config.h
