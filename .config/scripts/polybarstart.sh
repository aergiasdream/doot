#!/bin/bash
#
# Start polybar with proper display environment variables
# For use with my theming method 
# Applied polybar themes are in $HOME/.config/polybar/theme-config
# Larger displays use top and bottom bars, smaller displays use top bar only

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 2; done
#echo $HOSTNAME
echo "Launching polybar"
export MONITOR=$(polybar -m | tail -1 | awk -F ':' '{print $1}')
export COMPUTER=$(echo $HOSTNAME)
echo "Computer is $COMPUTER"
echo "Monitor set to $MONITOR"

if [[ "$COMPUTER" = "aeskhulos-Gazelle" ]]; then
  echo "Applying laptop settings..."
  polybar -r laptop-top &
  echo "Laptop settings applied"
elif [[ "$COMPUTER" = "quaristice" ]]; then
  echo "Applying desktop settings..."
  # TODO: see if this is necessary 
  # export MONITOR=DVI-I-2
  # polybar -r --config=$HOME/.config/polybar/theme-config bottom &
  # polybar -r --config=$HOME/.config/polybar/theme-config top &
  polybar -r top &
  echo "Desktop settings applied"
fi

echo "finished"
exit 0
