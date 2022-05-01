#!/bin/bash

function print_help () {
    echo "./build.sh <options>
    -t      IMAGE TYPE
    -v      IMAGE VERSION
    -s      SOURCE PATH
    -h      help
    ex) ./build.sh -t HERO/WEB -v 1.0.0
        ./build.sh -t HERO/DBMS -v 1.0.0
        ./build.sh -t HERO/WAS -s <SOURCE PATH> -v 1.0.0"
}

while getopts "t:v:s:d:c:h" opt
do
    case $opt in
        t) image_type=$OPTARG;;
        v) image_version=$OPTARG;;
        s) source_path=$OPTARG;;
        h) print_help;;
    esac
done

case $image_type in
    "HERO/WEB")
        cd ./web
        ./build.sh $image_version
    ;;
    "HERO/DBMS")
        cd ./dbms
        ./build.sh $image_version
    ;;
    "HERO/WAS")
        cd ./was
        ./build.sh -s $source_path $image_version
    ;;
esac
