#!/bin/bash

# Set image and container names
IMAGE_NAME=myapi
CONTAINER_NAME=myapi-app

# Build the Docker image
docker build -f fastapi.Dockerfile -t $IMAGE_NAME ..

# Stop and remove any existing container with the same name
docker rm -f $CONTAINER_NAME 2>/dev/null || true

# Run the container
docker run -d \
  --name $CONTAINER_NAME \
  --restart always \
  -p 8000:8000 \
  $IMAGE_NAME