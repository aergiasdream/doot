#! /bin/bash
#
# A backup autostart in case of nonexistant openbox autostart file

if [ ! -f ~/.config/openbox/autostart ]; then
	echo "No autostart detected"
else
	echo "conky -c ~/.config/conky/firstconky.conkyrc &" >> ~/.config/openbox/autostart
	echo "conky -c ~/.config/conky/todolist.conkyrc &" >> ~/.config/openbox/autostart
fi
