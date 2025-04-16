#!/bin/bash

# Jalankan nginx container jika belum ada
if [ "$(docker ps -aq -f name=my-nginx)" ]; then
  echo "Starting existing nginx container..."
  docker start my-nginx
else
  echo "Creating and starting new nginx container..."
  docker run -d --name my-nginx -p 8080:80 nginx
fi
