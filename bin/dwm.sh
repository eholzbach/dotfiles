#!/bin/bash

source .secrets
COUNTER=0
WEATHER="checking..."

while :; do
	if [[ "$COUNTER" -eq 0 ]]; then
		BLOB=$(curl -s http://api.wunderground.com/api/$WUKEY/conditions/q/$ZIPCODE.json)
		CURRENT=$(echo $BLOB | jq '.current_observation.weather' | tr -d '"')
		WIND=$(echo $BLOB | jq '.current_observation.wind_mph' | tr -d '"')
		TEMP=$(echo $BLOB | jq '.current_observation.temp_f' | tr -d '"')
		WEATHER=$(echo "$CURRENT, wind $WIND mph, $TEMP°F")
		COUNTER=600
	fi
	let COUNTER--

	B=$(conky -i 1 )
	D=$(date "+%A, %B %d | %r" ) 
	xsetroot -name "$B $WEATHER | $D"
	sleep 1
done
