#!/bin/bash

# Local path to your website directory
local_website_dir="/path/to/your/website"

# AWS EC2 instance details
ec2_instance_ip="your-ec2-instance-ip"
ec2_user="ec2-user"
ec2_remote_dir="/home/ec2-user"
nginx_config_dir="/etc/nginx/sites-available"
nginx_sites_enabled_dir="/etc/nginx/sites-enabled"

# Zip the website directory
echo "Zipping the website directory..."
zip -r website.zip "$local_website_dir"
echo "Zip successful."

# Transfer the zip file to the EC2 instance
echo "Transferring the zip file to the EC2 instance..."
scp -i "your-private-key.pem" website.zip "$ec2_user@$ec2_instance_ip:$ec2_remote_dir"
echo "Transfer successful."

# SSH into the EC2 instance and unzip the file
echo "SSHing into the EC2 instance and unzipping the file..."
ssh -i "your-private-key.pem" "$ec2_user@$ec2_instance_ip" "cd $ec2_remote_dir && unzip -o website.zip"
echo "Unzip successful."

# Nginx configuration
nginx_config="server {
    listen 80;
    server_name your_domain_or_ip;

    root $ec2_remote_dir;

    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}"

# Create Nginx configuration file
echo "$nginx_config" | ssh -i "your-private-key.pem" "$ec2_user@$ec2_instance_ip" "sudo tee $nginx_config_dir/your_website"
echo "Nginx configuration created."

# Create a symbolic link to enable the site
ssh -i "your-private-key.pem" "$ec2_user@$ec2_instance_ip" "sudo ln -s $nginx_config_dir/your_website $nginx_sites_enabled_dir/"
echo "Nginx site enabled."

# Reload Nginx to apply changes
ssh -i "your-private-key.pem" "$ec2_user@$ec2_instance_ip" "sudo systemctl reload nginx"
echo "Nginx reloaded."

# Notify user
echo "Transfer, unzip, and Nginx configuration processes completed successfully."

`
:Zips your website.
Transfers the zip file to the EC2 instance.
SSHs into the EC2 instance, unzips the website, and sets up Nginx configuration.
Creates an Nginx configuration file for your website.
Creates a symbolic link to enable the Nginx site.
Reloads Nginx to apply changes.
`