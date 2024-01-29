#!/bin/bash

# Install Docker
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Jenkins with Docker Compose
cat <<EOF > docker-compose.yml
version: '3'
services:
  jenkins:
    container_name: jenkins
    image: jenkins/jenkins:lts
    ports:
      - "8080:8080"
    volumes:
      - jenkins_home:/var/jenkins_home
    networks:
      - jenkins-net
networks:
  jenkins-net:
volumes:
  jenkins_home:
EOF

sudo docker-compose up -d

# Wait for Jenkins to start
sleep 60

# Retrieve the initial admin password
initial_password=$(sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword)

echo "Jenkins is now running."
echo "Visit http://your_server_ip_or_domain:8080 in your web browser."
echo "Use the following initial admin password when prompted:"
echo "$initial_password"
