#!/bin/bash

CONF_PATH=$1
IMAGE_VERSION=$2

echo "HERO/DBMS build start"
echo "CONF_PATH : $CONF_PATH"
echo "IMAGE_VERSION : $IMAGE_VERSION"

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

echo "HERO/DBMS build end"
