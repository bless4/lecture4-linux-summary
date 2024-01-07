#!/bin/bash
# Example of  if & else statement
a=5
b=10

if [ "$a" -lt "$b" ]; then
  echo "$a is less than $b"
else
  echo "$a is greater than or equal to $b"
fi
