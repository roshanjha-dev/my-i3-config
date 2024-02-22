#!/bin/bash

brightness=$(( ( ($(brightnessctl get) + 5) * 100) / 24000 ))
if [ $brightness -eq 10 ]
then
	brightnessctl set 2400

	#brightness=$(( $brightness - 10 ))
	notify-send -t 700 "Min Brightness" "10%"
else
	brightnessctl set 10%-

	brightness=$(( $brightness - 10 ))
	notify-send -t 700 "Brightness" "$brightness%"
fi
