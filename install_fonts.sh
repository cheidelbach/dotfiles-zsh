#!/bin/sh

if [ ! -d "/usr/local/share" ]; then
    makedir /usr/local/share
fi

if [ ! -d "/usr/local/share/fonts" ]; then
    makedir /usr/local/share/fonts
fi

sudo cp -r fonts/* /usr/local/share/fonts
sudo fc-cache -f -v