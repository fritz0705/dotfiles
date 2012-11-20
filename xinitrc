#!/bin/bash
setxkbmap de neo
urxvtd -q -f -o
if [ -f ~/.xinitrc.local ]
then
	. ~/.xinitrc.local
fi

if [ -f ~/wallpaper.jpg ]
then
	feh --bg-center ~/wallpaper.jpg
fi

i3
