#!/bin/sh

# set -e
set -x

dwm_version="6.5"
dmenu_version="5.3"
st_version="0.9.2"


rm ~/.shinit
rm ~/.profile
rm ~/.xinitrc
rm ~/.vimrc

ln -s ~/alpine/config/shinit     ~/.shinit
ln -s ~/alpine/config/profile   ~/.profile
ln -s ~/alpine/config/xinitrc   ~/.xinitrc
ln -s ~/alpine/config/vimrc     ~/.vimrc

cp ~/alpine/config/st/config.h     /opt/st-${st_version}/
cp ~/alpine/config/dwm/config.h    /opt/dwm-${dwm_version}/
