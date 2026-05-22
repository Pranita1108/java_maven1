#!/bin/bash
# Docker installation script for Amazon Linux 2 EC2

# Update system packages
sudo yum update -y

# Install Docker
sudo amazon-linux-extras enable docker
sudo yum install -y docker

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user (default) to docker group
sudo usermod -aG docker ec2-user

echo "✅ Docker installation complete on Amazon Linux 2."
echo "ℹ️ Log out and back in, or run 'newgrp docker' to use Docker without sudo."
