#!/usr/bin/env zsh

# First off, we're gonna set our variables
# total should == 3
total=( $(</sys/class/leds/asus::kbd_backlight/max_brightness) )
curr=( $(</sys/class/leds/asus::kbd_backlight/brightness) )

if [ "$1" = "get" ]; then # Check if they just want to "get" current brightness
  echo $curr
  exit
elif [ "$1" = "-c" ]; then # Check for "-c" flag
  num=$2
  clear=true
elif [ "$1" = "inc" ]; then # Check if we're just incrementing
  ((num = $curr + 1))
elif [ "$1" = "dec" ]; then # Or just decrementing
  ((num = $curr - 1))
else 
  num=$1
  clear=false
fi

# Input validation!
if [[ ($num -gt 3) || ($num -lt 0)]]; then
  echo "Try entering a number between 0-3." 
  exit
fi

# Actually setting the brightness.
echo $num | sudo tee /sys/class/leds/asus::kbd_backlight/brightness 

# If "-c" was passed, we'll clear the screen after changing brightness
if [ "$clear" = true ]; then
  exec clear
fi

