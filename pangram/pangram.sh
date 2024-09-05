#!/usr/bin/env bash

if (( $# != 1 )); then
    echo false
    exit 0
fi      

declare -A my_array
input=${1,,}
input=${input//[^a-z]}
for (( iter=${#input}-1; iter >= 0; --iter)); do
    ((++my_array[${input:iter:1}]))
done

#for key in "${!my_array[@]}"; do
#    echo "${key}:${my_array[$key]}"
#done

if (( ${#my_array[*]} == 26)); then
    echo true
else
    echo false
fi
