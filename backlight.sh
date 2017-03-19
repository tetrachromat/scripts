#!/usr/bin/env zsh

# First off, we're gonna set our variables
# total should = 937
total=( $(</sys/class/backlight/intel_backlight/max_brightness) )

((inc = total / 20))

curr=( $(</sys/class/backlight/intel_backlight/brightness) )
((perc = curr / inc))


clear=false
num=$1

if [ $num = "--get" ]; then #Check if they just want to "get" current brightness
  echo $perc
  exit
elif [ $num = "-c" ]; then #Check for "-c" flag
  num=$2
  clear=true
fi

if [ $num = "inc" ]; then
  ((num = $perc + 1))
  echo $num
elif [ $num = "dec" ]; then
  ((num = $perc - 1))
  echo $num
fi

# Input validation!
if [[ ($num -gt 20) || ($num -lt 1)]]; then
  echo "Try entering a number between 1-20." 
  exit
fi

if [[ ($num == 20) ]]; then
 new_bright=$total 
 else
  ((new_bright = inc * num))
fi

# Actually setting the brightness.
echo $new_bright | sudo tee /sys/class/backlight/intel_backlight/brightness 

# If "-c" was passed, we'll clear the screen after changing brightness
if [ "$clear" = true ]; then
  exec clear
fi

