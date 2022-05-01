#!/bin/bash

IMAGE_VERSION=$1

echo "HERO/WEB build start"
echo "IMAGE_VERSION : $IMAGE_VERSION"

echo "docker rmi aosvj1/hero:web_$IMAGE_VERSION"
docker rmi aosvj1/hero:web_$IMAGE_VERSION

echo "docker build -t aosvj1/hero:web_$IMAGE_VERSION ."
docker build -t aosvj1/hero:web_$IMAGE_VERSION .

cd ../

echo "rm -f hero-web_$IMAGE_VERSION.tar.gz"
rm -f hero-web_$IMAGE_VERSION.tar.gz

echo "docker save aosvj1/hero:web_$IMAGE_VERSION | gzip > hero-web_$IMAGE_VERSION.tar.gz"
docker save aosvj1/hero:web_$IMAGE_VERSION | gzip > hero-web_$IMAGE_VERSION.tar.gz

echo "HERO/WEB build end"
