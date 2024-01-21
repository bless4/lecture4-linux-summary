#!/bin/bash

# Function to greet a user
greet_user() {
    echo "Hello, $1!"
}

# Function to add two numbers
add_numbers() {
    local sum=$(( $1 + $2 ))  # Local variable 'sum'
    echo "Sum: $sum"
}

# Function to check if a number is even or odd
check_even_odd() {
    if (( $1 % 2 == 0 )); then
        echo "$1 is even."
    else
        echo "$1 is odd."
    fi
}

# Main part of the script
echo "Script starts here."

# Call the greet_user function
greet_user "John"

# Call the add_numbers function
add_numbers 5 7

# Call the check_even_odd function
check_even_odd 10

echo "Script ends here."
