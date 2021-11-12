#!/bin/sh

sudo apt install fontconfig -y

if [ ! -d "/usr/local/share" ]; then
    sudo mkdir /usr/local/share
fi

if [ ! -d "/usr/local/share/fonts" ]; then
    sudo mkdir /usr/local/share/fonts
fi

sudo cp -r fonts/* /usr/local/share/fonts
sudo fc-cache -f -v