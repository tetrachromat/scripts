#!bin/bash
if [ $BACKGROUND ]
then
  exec feh --bg-fill $BACKGROUND &
else
  exec feh --bg-fill /home/phat_sumo/Pictures/Backgrounds/solarized_home.png $
fi

