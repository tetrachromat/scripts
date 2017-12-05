#!/bin/bash

/home/phat_sumo/Documents/Scripts/back.sh &
/home/phat_sumo/Documents/Scripts/touchscreen.sh &

exec xrandr --output HDMI1 --auto --right-of eDP1
