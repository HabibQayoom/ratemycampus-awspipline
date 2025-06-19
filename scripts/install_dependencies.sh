#!/bin/bash
cd /home/ubuntu/app
docker compose down || true
docker system prune -af
