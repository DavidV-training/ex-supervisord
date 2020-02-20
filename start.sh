#!/bin/bash

IMAGE=nginx-php:latest
CONTAINER=nginx-php
PORT=8081

docker build -t $IMAGE .

docker stop $CONTAINER > /dev/null 2>&1
docker rm $CONTAINER > /dev/null 2>&1

docker run -d --name nginx-php -p $PORT:80 $IMAGE
