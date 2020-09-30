#!/bin/bash

wget -qO - icanhazip.com | awk '{ print "WAN:" $1 }'
