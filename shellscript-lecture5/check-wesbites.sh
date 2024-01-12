#!/bin/bash

# List of websites to check
websites=("http://www.example.com" "http://www.google.com" "http://www.github.com")

# Email address to receive notifications
email="your.email@example.com"

# Loop through each website
for site in "${websites[@]}"; do
    # Use curl to make a HEAD request and check the HTTP status
    http_status=$(curl -IsS --head "$site" | head -n 1 | cut -d ' ' -f 2)

    # Check if the HTTP status indicates an error (e.g., not 2xx or 3xx)
    if [[ ! $http_status =~ ^[23] ]]; then
        # Website is unreachable, send notification
        echo "Warning: $site is unreachable (HTTP Status: $http_status)" | mail -s "Website Unreachable Alert" "$email"
    else
        # Website is reachable, print success message (optional)
        echo "$site is reachable (HTTP Status: $http_status)"
    fi
done
