#!/bin/bash

# Reading lines from a file
echo "Contents of the file 'example.txt':"
while read line
do
    echo $line
done < example.txt