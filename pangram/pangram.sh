#!/usr/bin/env bash

PRHASE_SIZE=${#1}

if [[ $# -ne 1 ]]; then
	echo false
	exit 1
fi      

number=${#1}
declare -A my_array

for (( i=0; i < number; i++)); do
	letter=${1:i:1}
	letter=${letter@L}
	
	if [[ $letter =~ [a-z] ]]; then
		if [[ -v my_array[$letter] ]];then
			((my_array[$letter]++))
		else
			my_array[$letter]=1
		fi
	fi
	
done

#for key in "${!my_array[@]}"; do
#	echo "${key}:${my_array[$key]}"
#done

if (( ${#my_array[*]} == 26)); then
	echo true
else
        echo false
fi
