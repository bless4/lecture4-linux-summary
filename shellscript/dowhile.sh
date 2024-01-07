#!/bin/bash

echo "Example of a While Loop:"

# Print numbers 1 through 5 using a while loop
count=1
while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
