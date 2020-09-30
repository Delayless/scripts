#!/bin/bash

/usr/bin/amixer -qM set Master 5%- umute
LOC=$(readlink -f $0)
DIR=$(dirname $LOC)
bash $DIR/dwm-status-refresh.sh

