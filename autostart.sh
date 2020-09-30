#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
echo $SCRIPT
# /bin/bash $SCRIPTPATH/feh.sh &
/bin/bash $SCRIPTPATH/wallpaper-autochange.sh &
/bin/bash $SCRIPTPATH/dwm-status.sh &
# /bin/bash $SCRIPTPATH/fcitx5.sh &
nm-applet &
blueman-tray &
# fcitx5 &
goldendict &
picom -b
# xcompmgr -f -l 0.038 -O 0.040 -D 3 -F -C -n &
