#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
# /bin/bash $SCRIPTPATH/feh.sh &
/bin/bash $SCRIPTPATH/wallpaper-autochange.sh &
/bin/bash $SCRIPTPATH/dwm-status.sh &
nm-applet &
blueman-tray &
udiskie -s &
# fcitx5 -d
goldendict &
# `xrandr --listproviders` to query the parameters
xrandr --setprovideroffloadsink nouveau Intel
# OR
# xrandr --setprovideroffloadsink 1 0
picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil
keynav
# without PRIME GPU offloading, xcompmgr is better maybe
# xcompmgr -c &
dunst &
# xcompmgr -f -l 0.038 -O 0.040 -D 3 -F -C -n &
# (fcitx5 > /dev/null 2>&1)&
