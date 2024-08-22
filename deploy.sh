#!/bin/bash
IMAGE_NAME="my-react-app"
echo "Deploying Docker image using Docker Compose..."
docker-compose up --build -d
if [ $? -eq 0 ]; then
    echo "Deployment successful!"
else
    echo "Deployment failed!"
    exit 1
fi

