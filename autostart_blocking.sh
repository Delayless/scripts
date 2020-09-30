#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
# `gsettings get org.gnome.desktop.background picture-uri` to get default background file path. Replace it.
# feh --bg-fill ~/Pictures/Wallpapers/Girlfriend-HorizontalView.jpg
# /bin/bash $SCRIPTPATH/dualmon.sh
/bin/bash $SCRIPTPATH/qwerty.sh
# /bin/bash $SCRIPTPATH/colemak.sh
/bin/bash $SCRIPTPATH/tap-to-click.sh
/bin/bash $SCRIPTPATH/inverse-scroll.sh
