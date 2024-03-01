#!/bin/bash

# Update package repositories
sudo yum update -y

# Install dependencies
sudo yum install -y curl

# Install kubectl
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Install Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $(whoami)

# Install Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/

# Install libvirt and KVM
sudo yum install -y libvirt qemu-kvm

# Start libvirtd service
sudo systemctl start libvirtd

# Enable libvirtd service to start on boot
sudo systemctl enable libvirtd

# Add current user to the libvirt group
sudo usermod -aG libvirt $(whoami)

echo "Minikube, kubectl, Docker, Libvirt, and KVM have been installed and configured."



# chmod +x install_minikube.sh

# sudo ./install_minikube.sh
