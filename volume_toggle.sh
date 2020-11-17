#!/bin/bash

# /usr/bin/amixer set Master toggle
LOC=$(readlink -f $0)
DIR=$(dirname $LOC)
bash $DIR/set_volume.sh --toggle
bash $DIR/dwm-status-refresh.sh
