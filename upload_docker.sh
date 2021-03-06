#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerid=agostonp
dockerpath="agostonp/udproj-kubernetes"

# Step 2:  
# Authenticate & tag

# docker login --username=$dockerid #To be run only once

echo "Docker ID and Image: $dockerpath"
docker tag $dockerpath:latest $dockerpath:uploaded
docker image ls $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath:uploaded