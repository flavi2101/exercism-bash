#!/usr/bin/env bash

var1=$1
var2=$2
count=0

if (( $# != 2 )); then
	echo "Usage: hamming.sh <string1> <string2>"
	exit 1
fi

if (( ${#var1} != ${#var2} )); then
	echo strands must be of equal length
	exit 1	
fi

for ((i=0; i<${#var1}; i++)); do
	letter1="${var1:i:1}"	        
	letter2="${var2:i:1}"	        
   	if [[ $letter1 != "$letter2" ]]; then
		((count++))
	fi
done	
	echo $count 
