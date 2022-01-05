#!/bin/bash

# Get id of touchpad and the id of the field corresponding to natural scrolling
swith_touchpad() {
	Touchpad_id=`xinput list | grep $1 | cut -d'=' -f2 | cut -d'[' -f1`
	if [[ $Touchpad_id -ne 0 ]]; then
		Touchpad_enable_id=`xinput list-props $Touchpad_id \
							  | grep "Device Enabled (" \
							  | cut -d'(' -f2 | cut -d')' -f1`

		enable_flag=`xinput list-props $Touchpad_id \
							  | grep "Device Enabled (" \
							  | cut -d'(' -f2 | cut -d':' -f2 | tr -d '[:space:]'`
		# echo "enable: $enable_flag"
		# echo "ID:$Touchpad_id $Touchpad_enable_id"
		if [[ $enable_flag == 1 ]]; then 
			# close
			# echo "closing"
			xinput --set-prop $Touchpad_id $Touchpad_enable_id 0
		else
			# open
			# echo "opening"
			xinput --set-prop $Touchpad_id $Touchpad_enable_id 1
		fi
	fi
}

# Laptop Touchpad
swith_touchpad "Touchpad"
