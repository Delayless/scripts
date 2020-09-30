#!/bin/bash

setxkbmap us colemak -option -option caps:swapescape altwin:swap_alt_win
xmodmap -e "keycode 135 = Alt_R Meta_R Alt_R Meta_R"
# xset r rate 300 30

