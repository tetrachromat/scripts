#!/usr/bin/env zsh

BAD_ARGS=133

NUM=$1

echo $NUM

if [[ ($NUM -gt 20) || ($NUM -lt 1)]]; then
  echo "You done fucked up bitch, enter a good number this time" 
  exit
fi

#TOTAL should = 937
TOTAL=( $(</sys/class/backlight/intel_backlight/max_brightness) )

((INC = TOTAL / 20))

if [[ ($NUM == 20) ]]; then
 NEW_BRIGHT=$TOTAL 
 else
  ((NEW_BRIGHT = INC * NUM))
fi

echo $NEW_BRIGHT | sudo tee /sys/class/backlight/intel_backlight/brightness

echo `clear`


