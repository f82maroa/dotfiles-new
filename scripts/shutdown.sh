#!/bin/bash

# Simple script to handle a DIY shutdown menu. When run you should see a bunch of options (shutdown, reboot etc.)
#
# Requirements:
# - rofi
# - systemd, but you can replace the commands for OpenRC or anything else
#
# Instructions:
# - Save this file as power.sh or anything
# - Give it exec priviledge, or chmod +x /path/to/power.sh
# - Run it

chosen=$(echo -e "Log Out\nApagar\nReboot" | dmenu -i -p "¿Qué desea realizar?" -sb red -fn "Iosevka Nerd Font-10")
# Info about some states are available here:
# https://www.freedeskt.org/software/systemd/man/systemd-sleep.conf.html#Description

if [[ $chosen = "Log Out" ]]; then
	alacritty --command kill -9 -1
elif [[ $chosen = "Apagar" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
fi
