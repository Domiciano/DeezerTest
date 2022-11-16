#!/bin/sh
echo "This script will execute the git clone and docker build/push to the i2t registry"
echo "You must be on the i2t network "

COMMITSHA="$(git rev-parse --short HEAD)"

echo "deploy appvimov"

docker push i2thub.icesi.edu.co:5000/appvimov:"$COMMITSHA"
docker push i2thub.icesi.edu.co:5000/appvimov:latest

echo "finish appvimov deploy"
echo "____________________________________________________________________"
echo "copy and paste this commit sha to the portainer docker image to deploy"
echo "$COMMITSHA"
echo "____________________________________________________________________"
