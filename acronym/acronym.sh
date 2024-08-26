#!/usr/bin/env bash

ORIGINAL_IFS=$IFS
IFS=" ,-,_,*,?"
for word in $*; do
	first_letter=${word:0:1}
	echo -n ${first_letter@U}
done;


IFS=$ORIGINAL_IFS
