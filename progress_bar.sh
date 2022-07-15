#!/bin/bash

# You can add this function to your script:

function pb {
# Usage:
# pb <length> <percentage> <title>
#
# Run a simple "echo" command any time to leave the progress bar

declare -i length=$1
declare -i percent=$2
title=$3
declare -i pop=length*percent/100
declare -i empty=length-pop
printf "$title ["
for (( i=0; i<=pop; i++ ))
do
    printf "#"
done
for (( i=0; i<empty; i++ ))
do
    printf " "
done
printf "]"
echo -n " $percent%"
printf "\r"
}

######################## Usage Sample ########################

function commands {
sleep 1
}

pb 30 30 title1
commands > /dev/null 2>&1
pb 30 60 title1
commands > /dev/null 2>&1
pb 30 90 title1
commands > /dev/null 2>&1
pb 30 100 title1
echo

pb 50 30 title2
commands > /dev/null 2>&1
pb 50 60 title2
commands > /dev/null 2>&1
pb 50 90 title2
commands > /dev/null 2>&1
pb 50 100 title2
echo
