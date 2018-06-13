#/bin/sh

if docker images | grep -q "my_node_tmp"; then
  printf "Image exist, starting..."
else
  printf "Image not found, creating..."
  docker build -t="my-node-tmp:v0.0.1" .
fi

docker-compose up -d