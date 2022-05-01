#!/bin/bash

NGINX_PATH=/nginx/sbin/nginx

$NGINX_PATH -t

if [ $? == 0 ]; then
    $NGINX_PATH
fi
