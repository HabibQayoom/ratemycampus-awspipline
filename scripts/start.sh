#!/bin/bash
echo "Navigating to app directory..."
cd /home/ubuntu/ratemycampus
aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 580420849247.dkr.ecr.ap-southeast-2.amazonaws.com

echo "Navigating to app directory..."
cd /home/ubuntu/ratemycampus

echo "Starting Docker containers using Docker Compose..."
docker compose down || true  # Stop if already running
docker compose pull           # Pull latest ECR images (if defined in docker-compose)
docker compose up -d         # Run containers in detached mode

echo "Deployment complete!"
