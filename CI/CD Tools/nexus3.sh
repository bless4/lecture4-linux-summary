#!/bin/bash

# Update package lists and install Docker
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start

# Install Docker Compose (optional, for managing multiple containers)
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create a Docker network for Nexus3
sudo docker network create nexus-net

# Pull and run the Nexus3 Docker image
sudo docker run -d \
    --name nexus3 \
    --network nexus-net \
    -p 8081:8081 \
    -p 8082:8082 \
    sonatype/nexus3

# Wait for Nexus3 to start up
sleep 30

# Access Nexus3 in your web browser
echo "Nexus3 is now running at http://<your-instance-public-ip>:8081"
