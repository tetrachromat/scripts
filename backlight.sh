#!/usr/bin/env zsh

# First off, we're gonna set our variables
# TOTAL should = 937
TOTAL=( $(</sys/class/backlight/intel_backlight/max_brightness) )

((INC = TOTAL / 20))

if [ "$1" = "get" ]; then #Check if they just want to "get" current brightness
  CURR=( $(</sys/class/backlight/intel_backlight/brightness) )
  ((PERC = CURR / INC))
  echo $PERC
  exit
fi 

if [ "$1" = "-c" ]; then #Check for "-c" flag
  NUM=$2
  CLEAR=true
else 
  NUM=$1
  CLEAR=false
fi

# Input validation!
if [[ ($NUM -gt 20) || ($NUM -lt 1)]]; then
  echo "Try entering a number between 1-20." 
  exit
fi

if [[ ($NUM == 20) ]]; then
 NEW_BRIGHT=$TOTAL 
 else
  ((NEW_BRIGHT = INC * NUM))
fi

# Actually setting the brightness.
echo $NEW_BRIGHT | sudo tee /sys/class/backlight/intel_backlight/brightness 

# If "-c" was passed, we'll clear the screen after changing brightness
if [ "$CLEAR" = true ]; then
  exec clear
fi

