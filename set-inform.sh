#!/bin/bash
#simple script to set-inform repeatedly then delete
#also has a count test in case of failure that will end after 1000 tries
#In event of success (or failure) this script self-deletes

variv=true
count=0

while [ $variv -a $count -lt 10 ]
do
	if ping -c 1 -w 1 192.168.1.1 &> /dev/null;
	then
		variv=true
		mca-cli-op set-inform http://atlasalex.duckdns.org:8080/inform
		sleep 5
		((count++))
	else
		variv=false
	fi

done

rm /config/scripts/post-config.d/mv.sh
rm ./set-inform.sh
