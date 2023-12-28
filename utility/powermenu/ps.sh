#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu
#
## Available Styles
#
## style-1   style-2   style-3   style-4   style-5


# Rofi CMD
wifi=$(nmcli -t -f active,ssid dev wifi | cut -d\' -f2)
rofi_cmd() {
   rofi -dmenu \
      -p "Wi-Fi: $wifi" \
      -theme ${dir}/${theme}.rasi
}


# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

