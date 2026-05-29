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
