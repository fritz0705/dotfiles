#!/bin/sh
exec `i3-input | strings | grep 'command' | sed 's/^command = //'`
