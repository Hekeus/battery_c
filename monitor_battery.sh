#!/bin/sh

PROGRAM="$1"
LOG_FILE="$2"
INTERVAL="${3:-30}"

while true; do
	
	battery_status=$("$PROGRAM" BAT0 2</dev/null)
	timestamp=$(date '+%Y-%m-%d %H:%M:%S')
	echo "$timestamp | $battery_status" >> "$LOG_FILE"
	sleep "$INTERVAL"

done
