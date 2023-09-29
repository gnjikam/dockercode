#!/bin/bash

# Update the system
sudo yum update -y

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start Docker and enable it to start on boot
sudo systemctl start docker
sudo systemctl enable docker