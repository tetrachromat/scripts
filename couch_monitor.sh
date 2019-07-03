#!/bin/bash

~/Documents/Scripts/back.sh &
~/Documents/Scripts/touchscreen.sh &


exec xrandr --output HDMI-1-1 --auto --above eDP-1-1 
