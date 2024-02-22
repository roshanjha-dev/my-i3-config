#!/bin/bash

pactl set-sink-volume @DEFAULT_SINK@ -10%

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk 'NR==1 { print $5 }')
notify-send -t 700 "Volume" "$volume"
