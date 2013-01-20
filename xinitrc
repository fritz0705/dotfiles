#!/bin/bash
setxkbmap de neo
urxvtd -q -f -o

[ -f ~/.xinitrc.local ] && source ~/.xinitrc.local
[ -f ~/wallpaper.jpg ] && feh --bg-center ~/wallpaper.jpg

i3

[ "${SSH_KILL_AGENT}" = "${SSH_AGENT_PID}" ] && ssh-agent -k

