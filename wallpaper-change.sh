#!/bin/bash

Monitor_1=$(find ~/Pictures/Wallpapers -iregex ".*[jp][pn][ge][g]?" | shuf -n1)
Monitor_2=$(find ~/Pictures/Wallpapers -iregex ".*[jp][pn][ge][g]?" | shuf -n1)
Monitor_3=$(find ~/Pictures/Vertical -iregex ".*[jp][pn][ge][g]?" | shuf -n1)
feh --bg-fill $Monitor_1 $Monitor_2 $Monitor_3
# feh --bg-fill --recursive --randomize ~/Pictures/Wallpapers
# feh --bg-fill ~/Pictures/Wallpapers/wallpapers/ghibili/Howls\ Moving\ Castle/d7mkwt4.png
