#!/usr/bin/env zsh
# Simple script I'm ripping off from i3lock-fancy
# Takes a picture of your background and applies a pixelate effect,
# Then saves it as 'background.png'

# Init the varables we'll use with imagemagick
EFFECT=(-scale 10% -scale 1000%)
HUE=(-level 0%,100%,0.6)

# Filename will simply be background.png
IMAGE="background.png"

scrot -z $IMAGE

convert $IMAGE $EFFECT $HUE $IMAGE
