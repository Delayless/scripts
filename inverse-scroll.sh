#!/bin/bash

# Get id of touchpad and the id of the field corresponding to natural scrolling
inverse_scroll() {
	Touchpad_id=`xinput list | grep $1 | cut -d'=' -f2 | cut -d'[' -f1`
	if [[ $Touchpad_id -ne 0 ]]; then
		natural_scrolling_Touchpad_id=`xinput list-props $Touchpad_id \
							  | grep "Natural Scrolling Enabled (" \
							  | cut -d'(' -f2 | cut -d')' -f1`
		# Set the property to true
		xinput --set-prop $Touchpad_id $natural_scrolling_Touchpad_id 1
	fi
}

# Laptop Touchpad
inverse_scroll "Touchpad"
# Apple Trackpad
inverse_scroll "Trackpad"
