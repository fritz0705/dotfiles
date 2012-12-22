#!/bin/sh
{
	i3lock -n -c '#000000' 
	[ -f ~/win2000.mp3 ] && mplayer ~/win2000.mp3
} &
