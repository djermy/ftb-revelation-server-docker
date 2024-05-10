#!/bin/sh

echo "Starting the server..."
./build.sh

docker run -it --rm \
  --name ftb-revelation-server \
  -p 25565:25565 \
  -v "$(pwd)/server/":/game/server/ \
  ftb-revelation-server
