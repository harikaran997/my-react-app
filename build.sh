#!/bin/bash
IMAGE_NAME="my-react-app"
echo "Building Docker image..."
docker build -t $IMAGE_NAME .
if [ $? -eq 0 ]; then
    echo "Docker image built successfully: $IMAGE_NAME"
else
    echo "Docker image build failed!"
    exit 1
fi
