#!/bin/bash

# Specify your EC2 instance ID
instance_id="i-0691859e40f5e90db"

# Stop the instance after 5 minutes
echo "Stopping the EC2 instance in 5 minutes..."
sleep 300  # 5 minutes sleep
aws ec2 stop-instances --instance-ids "$instance_id"
echo "EC2 instance stopped."

# Restart the instance after 10 minutes
echo "Restarting the EC2 instance in 10 minutes..."
sleep 600  # 10 minutes sleep
aws ec2 start-instances --instance-ids "$instance_id"
echo "EC2 instance restarted."
