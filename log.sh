#!/bin/sh

LOG_NAME=docker.log
CONTAINER_NAME=docker_api_gw
#get container ID
CONTAINER_ID=`sudo docker ps | grep $CONTAINER_NAME | awk '{ print $1}'`

#get container logs
sudo docker logs $CONTAINER_ID > $LOG_NAME

echo "output log name is  $LOG_NAME"
