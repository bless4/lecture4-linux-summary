#!/bin/bash

# Local path to your website directory
local_website_dir="/path/to/your/website"

# AWS EC2 instance details
ec2_instance_ip="your-ec2-instance-ip"
ec2_user="ec2-user"
ec2_remote_dir="/home/ec2-user"

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

# Notify user
echo "Transfer and unzip processes completed successfully."
