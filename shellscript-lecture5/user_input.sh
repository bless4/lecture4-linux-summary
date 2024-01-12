#!/bin/bash
# Create a script that takes user input and validates it
read -p "Enter your age: " age

if [[ ! $age =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid number."
  exit 1
fi

echo "You entered: $age"
