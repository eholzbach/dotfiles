#!/bin/bash

while true ; do
	A=$(uptime | sed 's/.*://; s/,//g')
	B=$(conky -i 1 )
	C=$(cat /tmp/weather)
	D=$(date "+%a %h %d %l:%M:%S %Z %Y" )
	echo $A $B $C "|" $D
	sleep 1
done
