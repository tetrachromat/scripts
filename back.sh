#!/usr/bin/env zsh

export BACKGROUND="/home/phat_sumo/Pictures/Backgrounds/vaporwave_delorean.png"

if [ $BACKGROUND ]
then
  exec feh --bg-fill $BACKGROUND
else
  exec feh --bg-fill /home/phat_sumo/Pictures/Backgrounds/solarized_home.png
fi

