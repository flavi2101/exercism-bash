#!/usr/bin/env bash
output=''

if (($1 % 3 == 0)); then
	output+=Pling 
fi

if (($1 % 5 == 0)); then
	output+=Plang 
fi

if (($1 % 7 == 0)); then
	output+=Plong 
fi

if [[ -z $output ]]; then
	echo "$1"
else 
	echo "$output"
fi
