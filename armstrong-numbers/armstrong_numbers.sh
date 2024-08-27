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
