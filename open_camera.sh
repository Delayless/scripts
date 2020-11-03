mpv --no-cache --untimed --demuxer-thread=no --video-sync=audio --vd-lavc-threads=1 --no-osc --no-input-default-bindings --no-config --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)

# mpv --no-cache --untimed --no-demuxer-thread --video-sync=audio --vd-lavc-threads=1 --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)

