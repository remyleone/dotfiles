#!/bin/sh

choice=`find /home/sieben/images/wallpapers -type f | grep -v .thumb | sort -R | head -n 1`
echo $choice
`gsettings set org.gnome.desktop.background picture-uri \"file://$choice\"`
