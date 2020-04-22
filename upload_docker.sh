#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
# Load parameters
. ./parameters.sh

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
imageID=$(docker images -q $dockerpath:latest)
# Docker hub login credentials
. ./login.sh
docker login -u=$username -p=$hub_password
docker tag $imageID $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath
