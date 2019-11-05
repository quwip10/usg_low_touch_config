#!/bin/sh
#simple script to set-inform repeatedly then delete
#also has a count test in case of failure that will end after 100 tries
#In event of success this script self-deletes

variv=true
count=0

while [ $variv -a $count -lt 100 ]
do
	if ping -c 1 -w 1 192.168.1.20 &> /dev/null;
	then
		mca-cli-op set-inform http://YOURIPHERE:8080/inform
		sleep 5
		((count++))
	else
		variv=false
	fi

done

if ! variv;
then
	rm ./set-inform-switch.sh
fi
