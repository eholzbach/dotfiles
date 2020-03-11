#!/bin/bash

while true ; do
	B=$(conky -i 1 )
	C=$(cat /tmp/weather)
	D=$(date "+%A, %B %d | %r")
	echo $B $C "|" $D
	sleep 1
done
