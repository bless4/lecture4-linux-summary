#!/bin/bash

# Specify the username
username="your_username"

# Source and destination paths
source_path="/home/$username/Documents/file.txt"
destination_path="/home/$username/Downloads/"

# Check if the source file exists
if [ -e "$source_path" ]; then
    # Copy the file to the destination
    cp "$source_path" "$destination_path"
    echo "File copied successfully."
else
    echo "Source file not found."
fi
