#!/bin/bash

if [ -f "/home/jose/.scripts/timep.log" ]; then
    start=$(cat /home/jose/.scripts/timep.log)
    curr=$(date +'%H:%M:%S')
    diff=$(( $(date -d "$curr" "+%s") - $(date -d "$start" "+%s") ))
    if [ "$diff" == "1500" ]; then
	echo "[Pom, $(date -d@$diff -u +'%M:%S' & notify-send 'Pomodoro' '25 Minutes have passed')] "
    else
	echo "[Pom, $(date -d@$diff -u +'%M:%S')] "
    fi
else
    echo ""	
fi

