#!/bin/bash

# Define a list (array)
fruits=("Apple" "Orange" "Banana" "Grapes" "Mango")

# Print the entire list
echo "List of fruits: ${fruits[@]}"

# Access individual elements
echo "First fruit: ${fruits[0]}"
echo "Second fruit: ${fruits[1]}"

# Loop through the list
echo "Looping through the list:"
for fruit in "${fruits[@]}"; do
  echo "$fruit"
done
