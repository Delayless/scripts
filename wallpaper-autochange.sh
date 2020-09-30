#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
while true; do
    /bin/bash $SCRIPTPATH/wallpaper-change.sh
    sleep 30m
done
