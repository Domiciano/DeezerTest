#!/bin/sh
echo "Building..."
COMMITSHA="$(git rev-parse --short HEAD)"
docker build --no-cache -f Dockerfile -t i2thub.icesi.edu.co:5000/appvimov:"$COMMITSHA" .
docker tag i2thub.icesi.edu.co:5000/appvimov:"$COMMITSHA" i2thub.icesi.edu.co:5000/appvimov:latest

echo "finish appvimov build"
