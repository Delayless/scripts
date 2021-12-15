#!/bin/bash

Active_Status=`systemctl status NetworkManager.service | grep "Active:" | cut -d' ' -f7`
echo "The Current Status: $Active_Status" > /dev/null
if [[ "$Active_Status" == "inactive" ]]; then
	echo "start..."
	systemctl start NetworkManager.service
else
	echo "stop..."
	systemctl stop NetworkManager.service
fi
