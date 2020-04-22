#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Load parameters


# Step 1:
# This is your Docker ID/path
. ./parameters.sh

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 $pod_name --image=$dockerpath:latest --port=5000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $pod_name 5000:5000