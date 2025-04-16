#!/bin/bash

# Jalankan ulang Nginx container (opsional)
if [ "$(docker ps -aq -f name=my-nginx)" ]; then
  docker start my-nginx
else
  docker run -d --name my-nginx -p 8080:80 nginx
fi

# Jalankan ulang Node.js app
if [ "$(docker ps -aq -f name=node-app)" ]; then
  echo "Starting existing Node.js container..."
  docker start node-app
else
  echo "Creating and starting new Node.js container..."
  docker run -d --name node-app \
    -v "${PWD}:/usr/src/app" \
    -w /usr/src/app \
    -p 3000:3000 \
    --restart unless-stopped \
    node:20 \
    npm start
fi
