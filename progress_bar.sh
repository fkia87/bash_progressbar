#!/bin/bash

###########################################################################
#    Copyright (C) 2022  Farhad Kia
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.
###########################################################################

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
