#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
        exit 1
fi

value=$1
sum=0

if [[ ${value:0:1} == "-" ]]; then
        ${is_negative:=1}
        shift 1
fi
size=${#1}
for (( i=0; i < size ; i++)); do

        unit=${value:i:1}
        if (( unit >= 0)); then
        sum=$((sum + unit**size))
        else
                echo "Parameter is not a number"
                exit 1
        fi
done
