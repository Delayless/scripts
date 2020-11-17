#!/bin/bash

LOC=$(readlink -f $0)
DIR=$(dirname $LOC)
while true
do
	# Require: alsa-lib, alsa-utils, bc
	bash $DIR/dwm-status-refresh.sh
	sleep 1
done
