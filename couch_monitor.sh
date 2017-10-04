#!/bin/bash
pulseaudio -k &
~/Documents/Scripts/back.sh &
~/Documents/Scripts/touchscreen.sh &


exec xrandr --output HDMI1 --auto --above eDP1 
