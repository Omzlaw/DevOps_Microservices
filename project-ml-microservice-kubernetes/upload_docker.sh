#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=22559900/machine-learning-microservice:latest

# Step 2:  
# Authenticate & tag
docker login --username 22559900
docker tag machine-learning-microservice $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
