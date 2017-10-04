#!/bin/bash

pulseaudio -k &
/home/phat_sumo/Documents/Scripts/back.sh &
/home/phat_sumo/Documents/Scripts/touchscreen.sh &

exec xrandr --output HDMI1 --auto --left-of eDP1
exec backg
