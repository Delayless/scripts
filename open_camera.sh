mpv --no-config --no-cache --untimed --demuxer-thread=no --video-sync=audio --vd-lavc-threads=1 --no-osc --no-input-default-bindings --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)
