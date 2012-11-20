#!/bin/sh
# Usage: ./batt.sh COMMAND
#
# Use the environment variables `critical' and `sleep_time' to refine this
# script.
# 
# Example: critical=50 ./batt.sh COMMAND
# Result: Every battery charge under 50% will result in COMMAND

status=`acpi`
if [ -n "$DISPLAY" ]
then
	echo $status | dzen2 -tw 512 -p 2 -bg red -fg white -ta l
fi

echo $status

exit 0

write() {
	echo $*
	if [ "$DISPLAY" != "" ]
	then
		echo $* | dzen2 -tw 256 -p 2 -bg red -fg white -ta l
	fi
}

energy_now=0
energy_total=0

for i in /sys/class/power_supply/BAT*
do
	if [ -f $i/energy_now ]
	then
		bat_enow=`cat $i/energy_now`
		bat_etot=`cat $i/energy_full`
	else
		bat_enow=`cat $i/charge_now`
		bat_etot=`cat $i/charge_full`
	fi
	energy_now=`expr $energy_now + $bat_enow`
	energy_total=`expr $energy_total + $bat_etot`
done

perc=`expr $energy_now '*' 100 / $energy_total`

write "$energy_now / $energy_total ($perc %)"
