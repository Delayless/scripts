#!/bin/bash

# Default computer speaker
# xrandr --listmonitors
pactl set-default-sink alsa_output.pci-0000_35_00.6.HiFi__hw_Generic__sink

hdmi_flag=$(pactl list short | grep monitor)
if [[ $hdmi_flag ]]
then
	# Dell Display
	xrandr --output HDMI-0 --auto --right-of DP-4
	# xrandr --output HDMI-1 --rotate left
	# xrandr --output DP-1 --auto --left-of HDMI-1 --rotate left
	pactl set-default-sink alsa_output.pci-0000_01_00.1.HiFi__hw_NVidia_3__sink
fi
