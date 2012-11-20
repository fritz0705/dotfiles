#!/bin/bash

get_id() {
	xinput list | grep -i $* | grep -oP 'id\=[0-9]+' | grep -oP '[0-9]+'
}

get_master_pointer() {
	xinput list | grep "master pointer" | grep -oP 'id\=[0-9]+' | grep -oP '[0-9]+' | head -1
}

touchpad_id=`get_id touchpad`
master_pointer=`get_master_pointer`

if [ -n "`xinput list $touchpad_id | grep -o floating`" ]
then
	xinput reattach $touchpad_id $master_pointer
else
	xinput float $touchpad_id
fi
