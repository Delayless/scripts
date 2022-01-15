#!/bin/bash

LOC=$(readlink -f $0)
DIR=$(dirname $LOC)
# Monitor_1=$(find ~/Pictures/Wallpapers -iregex ".*[jp][pn][ge][g]?" | shuf -n1)
# Monitor_2=$(find ~/Pictures/Wallpapers -iregex ".*[jp][pn][ge][g]?" | shuf -n1)
# Monitor_3=$(find ~/Pictures/Vertical -iregex ".*[jp][pn][ge][g]?" | shuf -n1)
# feh --bg-fill "$Monitor_1" "$Monitor_2" "$Monitor_3"
shopt -s nocasematch

IMG=$(find ~/Pictures/Wallpapers -type f | shuf -n1)
pgrep --list-full bash | grep back4.sh | cut -d" " -f1 | xargs kill

if [[ $IMG =~ "GIF" ]]; then
	$DIR/back4.sh 0.05 $IMG >/dev/null 2>&1 &
else
	feh --bg-fill $IMG
fi

# feh --randomize --bg-fill $IMG

# feh --bg-fill --recursive --randomize ~/Pictures/Wallpapers
# feh --bg-fill ~/Pictures/Wallpapers/wallpapers/ghibili/Howls\ Moving\ Castle/d7mkwt4.png
