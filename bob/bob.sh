#!/usr/bin/env bash

    phrase="$*" 
    phrase=$(echo "$phrase" | tr -d '[:space:]')
    if (( $# == 0 )) || [[ -z $phrase ]]; then
    echo Fine. Be that way!
    exit 0
fi
    last_char="${phrase: -1}"

    if [[ $phrase =~ [a-zA-Z] && $phrase == ${phrase^^} ]]; then
         ((yelling_flag=1))
    else
         ((yelling_flag=0))
    fi
 
 
if [[ $last_char == "?" ]]; then
    ((question_flag=1))
fi

if (( yelling_flag == 1 && question_flag == 1)); then
    echo "Calm down, I know what I'm doing!"
elif (( question_flag == 1)); then
    echo Sure.
elif (( yelling_flag == 1)); then
    echo Whoa, chill out!
else
    echo Whatever.
fi

