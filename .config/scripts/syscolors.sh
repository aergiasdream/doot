#! /bin/bash
#
# Generate a color swatch based on xrdb colors

cfile=~/.Xresources

if [ -f $cfile ]; then

  colors=$(xrdb -query | grep *.color | awk -F 'r' '{print $2}' | awk -F ':\t' '{print $1$2}')\
  sbg=$(xrdb -query | grep *.background | awk -F ':\t' '{print $2}')
  sfg=$(xrdb -query | grep *.foreground | awk -F ':\t' '{print $2}')

  if [ -f /tmp/systemcolors.png ]; then 
    rm /tmp/systemcolors.png
    rm /tmp/systemcolors1.png
    rm /tmp/systemcolors2.png
  fi

  convert -size 51x70 xc:$sbg /tmp/systemcolors1.png
  convert -size 51x70 xc:$sfg /tmp/systemcolors2.png
  
  for i in $colors
  do
    colornum=$(echo $i | awk -F '#' '{print $1}')
    colorval=$(echo $i | awk -F '#' '{print $2}')
    fname="/tmp/sc${colornum}.png"
    if [ $colornum -gt 7 ]; then
      convert -size 51x70 xc:#$colorval $fname
      convert /tmp/systemcolors2.png $fname +append /tmp/systemcolors2.png
    else
      convert -size 51x70 xc:#$colorval $fname
      convert /tmp/systemcolors1.png $fname +append /tmp/systemcolors1.png
      rm $fname
    fi
  done
  
  convert /tmp/systemcolors1.png /tmp/systemcolors2.png -append /tmp/systemcolors.png
else
  echo "No Xresources file found"
fi
