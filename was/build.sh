#!/bin/bash

SOURCE_PATH=$1
IMAGE_VERSION=$2

echo "HERO/WAS build start"
echo "SOURCE_PATH : $SOURCE_PATH"
echo "IMAGE_VERSION : $IMAGE_VERSION"

echo "cp -R $SOURCE_PATH ./hero"
cp -R $SOURCE_PATH ./hero

echo "rm -rf ./hero/.git* ./hero/.npmignore ./hero/README.md"
rm -rf ./hero/.git* ./hero/.npmignore ./hero/README.md

echo "docker rmi amuzlabdevelop/hero:was_$IMAGE_VERSION"
docker rmi amuzlabdevelop/mpp:tsplayer-tr-manager_$IMAGE_VERSION

echo "docker build -t amuzlabdevelop/hero:was_$IMAGE_VERSION ."
docker build -t amuzlabdevelop/hero:was_$IMAGE_VERSION .

echo "rm -rf ./hero"
rm -rf ./hero

cd ../

echo "rm -f hero-was_$IMAGE_VERSION.tar.gz"
rm -f hero-was_$IMAGE_VERSION.tar.gz

echo "docker save amuzlabdevelop/hero:was_$IMAGE_VERSION | gzip > hero-was_$IMAGE_VERSION.tar.gz"
docker save amuzlabdevelop/hero:was_$IMAGE_VERSION | gzip > hero-was_$IMAGE_VERSION.tar.gz

echo "HERO/WAS build end"
