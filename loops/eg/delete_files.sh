#!/bin/bash

# Specify the directory path
directory_path="/path/to/your/directory"

# Check if the specified directory exists
if [ -d "$directory_path" ]; then
  # Move to the specified directory
  cd "$directory_path" || exit

  # Delete contents excluding folders and specific file types
  find . -type f ! -name "*.pdf" ! -name "*.jpg" ! -name "*.doc" ! -name "*.docx" -exec rm -f {} \;

  echo "Contents deleted successfully."
else
  echo "Directory not found."
fi


# ===========================================More Explaination================


: `
t checks if the specified directory exists.
If the directory exists, it moves into that directory.
It uses the find command to locate files (-type f) excluding those with specified extensions.
The -exec option is used to execute the rm -f command on each found file.
`