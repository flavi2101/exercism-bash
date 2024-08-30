#!/usr/bin/env bash

value=$1
sum=0

for ((size=${#1}, aux = size - 1; aux >= 0; --aux)); do
    ((sum += ${value:aux:1}**size))
done
# dangerous approach preferable the use of if 
#(( sum == value )) && echo true || echo false

if (( sum == value )); then
    echo true
else
    echo false
