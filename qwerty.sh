#!/bin/bash

# caps <-> escape
# setxkbmap us basic -option -option caps:escape altwin:swap_alt_win
# xmodmap -e "keycode 135 = Alt_R Meta_R Alt_R Meta_R"
# xset r rate 300 30
# setxkbmap us basic -option -option caps:swapescape altwin:swap_alt_win altwin:menu_win
setxkbmap us basic -option -option caps:escape_shifted_capslock altwin:swap_alt_win altwin:menu_win

# HHKB layout
# setxkbmap us basic -option -option caps:ctrl_modifier altwin:swap_alt_win
# xmodmap -e "keycode 135 = Alt_R Meta_R Alt_R Meta_R"
# xmodmap -e "keycode  37 = Escape NoSymbol Escape"
# xmodmap -e "keycode  22 = backslash bar backslash bar"
# xmodmap -e "keycode  51 = BackSpace BackSpace BackSpace BackSpace"

