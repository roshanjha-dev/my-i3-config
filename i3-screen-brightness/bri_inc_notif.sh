#!/bin/bash

brightness=$(( ( ($(brightnessctl get) + 5) * 100) / 24000 ))
if [ $brightness -eq 100 ]
then
	notify-send -t 700 "Max Brightness" "$brightness%"
else
	brightnessctl set +10%

	brightness=$(( $brightness + 10 ))
	notify-send -t 700 "Brightness" "$brightness%"
fi
