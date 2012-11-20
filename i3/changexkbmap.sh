#!/bin/bash

layout=de
current_variant=$(setxkbmap -query | grep variant | awk '{print $2}')

case "$current_variant" in
	neo)
		new_variant=nodeadkeys;;
	nodeadkeys)
		new_variant=neo;;
	*)
		new_variant=nodeadkeys;;
esac

setxkbmap $layout $new_variant
