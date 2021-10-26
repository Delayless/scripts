#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)

Active_Status=`systemctl status NetworkManager.service | grep "Active:" | cut -d' ' -f7`
if [[ "$Active_Status" == "inactive" ]]; then
	echo "start..."
	systemctl start NetworkManager.service
else
	echo "stop..."
	systemctl stop NetworkManager.service
fi
