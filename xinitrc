#!/bin/bash

setxkbmap de neo
urxvtd -q -f -o

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ] && type dbus-launch >/dev/null; then
	eval $(dbus-launch --sh-syntax --exit-with-session)
fi

case "$DESKTOP_SESSION" in
  gnome|kde*|xfce*) # PulseAudio is started via XDG Autostart
  ;;
  *)
    # Extra checks in case DESKTOP_SESSION is not set correctly
    if [[ -z $KDE_FULL_SESSION && -z $GNOME_DESKTOP_SESSION_ID ]]; then
      /usr/bin/start-pulseaudio-x11
    fi
  ;;
esac

[ -f ~/.xinitrc.local ] && source ~/.xinitrc.local
[ -f ~/wallpaper.jpg ] && feh --bg-center ~/wallpaper.jpg

i3

[ "${SSH_KILL_AGENT}" = "${SSH_AGENT_PID}" ] && ssh-agent -k

