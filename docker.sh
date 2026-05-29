#!/bin/bash
# Docker installation script for Amazon Linux 2 EC2

# Update system packages
sudo yum update -y

# Enable and install Docker
sudo amazon-linux-extras enable docker
sudo yum install -y docker

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user (default) to docker group
sudo usermod -aG docker ec2-user


#!/bin/bash
# Docker installation script for Ubuntu EC2

# Update package index
sudo apt-get update -y

# Install required packages
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package index again
sudo apt-get update -y

# Install Docker Engine, CLI, and Compose plugin
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Add current user to docker group
sudo usermod -aG docker $USER

echo "✅ Docker installation complete on Ubuntu EC2."
echo "ℹ️ Log out and back in, or run 'newgrp docker' to use Docker without sudo."
