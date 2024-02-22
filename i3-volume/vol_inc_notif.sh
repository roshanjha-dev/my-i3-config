#!/bin/bash

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk 'NR==1 { print $5 }' | awk -F '%' '{ print $1 }')
if [ $volume -eq 100 ]
then
	notify-send -t 1000 "Max Volume Reached" "Don't you care about your ears at all"
else
	pactl set-sink-volume @DEFAULT_SINK@ +10%

	volume=$(( $volume + 10 ))
	notify-send -t 700 "Volume" "$volume%"
fi
