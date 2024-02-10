#!/bin/bash

# Install Docker
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# Create a Docker group and add the current user
sudo groupadd docker
sudo usermod -aG docker $USER

# Log out and log back in for group changes to take effect
echo "Please log out and log back in for group changes to take effect."
exit

# Create a docker-compose.yml file
cat << EOF > docker-compose.yml
version: '3.8'
services:
  sonarqube:
    image: sonarqube:latest
    ports:
      - "9000:9000"
    volumes:
      - sonarqube_data:/opt/sonarqube/data
      - sonarqube_extensions:/opt/sonarqube/extensions
      - sonarqube_logs:/opt/sonarqube/logs
volumes:
  sonarqube_data:
  sonarqube_extensions:
  sonarqube_logs:
EOF

# Start SonarQube using docker-compose
docker-compose up -d

# Access SonarQube in your browser at http://your-instance-ip:9000
echo "SonarQube is now running! Access it at http://your-instance-ip:9000"
