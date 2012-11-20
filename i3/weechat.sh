#!/bin/sh
urxvtc -title 'weechat' -e ssh pulcher.grimpen.net -t -- 'TERM=xterm screen -dr weechat'
