#!/bin/bash

IMAGE_VERSION=$1

echo "HERO/DBMS build start"
echo "IMAGE_VERSION : $IMAGE_VERSION"

echo "docker rmi aosvj1/hero:dbms_$IMAGE_VERSION"
docker rmi aosvj1/hero:dbms_$IMAGE_VERSION

echo "docker build -t aosvj1/hero:dbms_$IMAGE_VERSION ."
docker build -t aosvj1/hero:dbms_$IMAGE_VERSION .

cd ../

echo "rm -f hero-dbms_$IMAGE_VERSION.tar.gz"
rm -f hero-dbms_$IMAGE_VERSION.tar.gz

echo "docker save aosvj1/hero:dbms_$IMAGE_VERSION | gzip > hero-dbms_$IMAGE_VERSION.tar.gz"
docker save aosvj1/hero:dbms_$IMAGE_VERSION | gzip > hero-dbms_$IMAGE_VERSION.tar.gz

echo "HERO/DBMS build end"
