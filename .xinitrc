#!/bin/bash
eval `ssh-agent`
setxkbmap de neo
if [ -f ~/.xinitrc.local ]
then
	. ~/.xinitrc.local
fi

if [ -f ~/wallpaper.jpg ]
then
	feh --bg-center ~/wallpaper.jpg
fi

i3
kill $SSH_AGENT_PID
