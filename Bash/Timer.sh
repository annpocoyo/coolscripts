#!/bin/bash
if [ "$1" = "" ] || [ "$1" = "-s" ] || [ "$1" = "-S" ]
then
echo "How long do you went to set the timer for."
read -r
SEC=${REPLY}
while [ "$SEC" -ge 0 ]
do
echo "$SEC"
SEC=$((SEC-1))
sleep 1
done
fi

if [ "$1" = "/?" ] || [ "$1" = "-?" ]
then
echo
echo Usage: ./Timer.sh [time] [-s]
echo
echo Time: Replace this with how much time you went the timer to run.
echo
echo -S: do not play the sound
echo
echo If no arguments were input the script will ask how much time you went the timer to run for.
echo
exit
fi

if [ "$1" != "" ] && [ "$1" != "-s" ] && [ "$1" != "-S" ]
then
SEC=$1
while [ "$SEC" -ge 0 ]
do
echo "$SEC"
SEC=$((SEC-1))
sleep 1
done
fi

if [ "$2" != "-s" ] && [ "$2" != "-S" ] && [ "$1" != "-s" ] && [ "$1" != "-S" ]
then
echo
echo "Time's up."
echo Press Ctrl-c to dismiss
while :                                          
do
afplay /System/Library/Sounds/Submarine.aiff
sleep 0.1
done
fi
exit
