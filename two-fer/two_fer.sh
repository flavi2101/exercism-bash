#!/usr/bin/env bash

if (( "$#" >= 1 )); then
  name="$1"
else
  name="you"
fi

echo "One for $name, one for me."
