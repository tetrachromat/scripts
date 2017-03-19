#!/bin/bash

pulseaudio -k &
/home/phat_sumo/Documents/Scripts/back.sh &
/home/phat_sumo/Documents/Scripts/touchscreen.sh &

exec xrandr --output HDMI-1 --auto --right-of eDP-1
