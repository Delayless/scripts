#!/bin/bash

xrandr --output HDMI-1 --right-of DP-1
xrandr --output DP-1 --rotate left
xrandr --output eDP-1 --right-of HDMI-1
# xrandr --auto --output HDMI-1 --left-of eDP-1 --size 1920x1080
