#!/bin/bash

# 只提醒一次
alert_sent=false

while true; do
    # 获取当前电池电量百分比
    battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

    # 检查电量是否低于10%，并且是否未发送过提醒
    if [ $battery_level -le 10 ] && [ "$alert_sent" = false ]; then
        # 显示警告消息
        notify-send "Battery Low" "电量低于${battery_level}%! 请充电."
        # 设置提醒已发送为真
        alert_sent=true
    fi

    # 如果电量高于10%，重置提醒标志
    if [ $battery_level -ge 10 ]; then
        alert_sent=false
    fi

    # 等待60秒
    sleep 60
done
