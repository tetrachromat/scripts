#!/bin/bash

pulseaudio -k &
./back.sh &
./touchscreen.sh &

exec xrandr --output HDMI-1 --auto --right-of eDP-1
