#!/bin/bash

docker compose down || true
docker system prune -af
