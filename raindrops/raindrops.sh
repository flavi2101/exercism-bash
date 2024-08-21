#!/usr/bin/env bash

arg_value=$1
by_three=$(($1 % 3))
by_five=$(($1 % 5))
by_seven=$(($1 % 7))


if ((by_three == 0)); then
	echo -n "Pling" 
fi

if ((by_five == 0)); then
	echo -n "Plang"
fi

if ((by_seven == 0)); then
	echo -n "Plong"
fi

if ((by_three != 0 && by_five != 0 &&  by_seven != 0)); then
	echo "$1"
fi
