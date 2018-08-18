#!/bin/bash

/home/phat_sumo/Documents/Scripts/back.sh &
/home/phat_sumo/Documents/Scripts/touchscreen.sh &

exec xrandr --output HDMI-1 --auto --left-of eDP-1
exec backg
