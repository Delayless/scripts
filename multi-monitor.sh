#!/bin/bash

# Default computer speaker
pactl set-default-sink alsa_output.pci-0000_00_1b.0.analog-stereo

hdmi_flag=$(pactl list short | grep alsa_output.pci-0000_00_03.0.hdmi-stereo)
if [[ $hdmi_flag ]]
then
# Dell Display
xrandr --output HDMI-1 --auto --left-of eDP-1
# little screen
xrandr --output DP-1 --auto --left-of HDMI-1 --rotate left
pactl set-default-sink alsa_output.pci-0000_00_03.0.hdmi-stereo
fi
