#!/bin/bash

pulseaudio -k &
./back.sh &
./touchscreen.sh &

exec xrandr --output HDMI-1 --auto --left-of eDP-1
exec backg
