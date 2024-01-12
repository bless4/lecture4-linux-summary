#!/bin/bash

# Update the package lists
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Display Nginx status
sudo systemctl status nginx

# Print Nginx version
nginx -v

# Print Nginx configuration file location
echo "Nginx configuration file is located at: /etc/nginx/nginx.conf"

# Print default web root directory
echo "Default web root directory is located at: /var/www/html"

# Display a message indicating successful installation
echo "Nginx has been successfully installed and started."

# Provide information on how to access Nginx
echo "You can access Nginx by opening your web browser and entering the public IP address of your AWS instance."


: '
Explanation of each part of the script:

sudo apt update -y: Updates the package lists on the system.
sudo apt install nginx -y: Installs Nginx.
sudo systemctl start nginx: Starts the Nginx service.
sudo systemctl enable nginx: Enables Nginx to start on boot.
sudo systemctl status nginx: Displays the status of the Nginx service.
nginx -v: Prints the Nginx version.
echo "Nginx configuration file is located at: /etc/nginx/nginx.conf": Provides the location of the Nginx configuration file.
echo "Default web root directory is located at: /var/www/html": Informs about the default web root directory.
Display a success message and information on how to access Nginx.
'

