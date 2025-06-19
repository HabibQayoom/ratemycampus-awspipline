#!/bin/bash
cd /home/ubuntu/app
aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 580420849247.dkr.ecr.ap-southeast-2.amazonaws.com
docker compose up -d --build
