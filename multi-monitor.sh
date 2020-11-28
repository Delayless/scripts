#!/bin/bash

# Dell Display
xrandr --output HDMI-1 --auto --left-of eDP-1

# little screen
xrandr --output DP-1 --auto --left-of HDMI-1 --rotate left
