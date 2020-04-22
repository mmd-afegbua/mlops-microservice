#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Load parameters
. ./parameters.sh

# Step 1:
# Build image and add a descriptive tag
docker build --build-arg APP_PORT=$PORT --tag=$dockerpath .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -e "PORT=$PORT" -p $LOCAL_PORT:$PORT