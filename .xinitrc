#!/bin/bash

eval `ssh-agent`
setxkbmap de neo
i3
kill $SSH_AGENT_PID
