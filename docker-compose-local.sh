#!/bin/bash

PWD=$(cd $(dirname $0) && pwd)

# Create Network
COUNT_DOCKER_NETWORK="$(docker network ls -f name=datsu-paiza-template -q | wc -l | sed 's/^[ \t]*//')"
if [ $COUNT_DOCKER_NETWORK != "1" ]; then
    docker network create datsu-paiza-template
fi

# Install node_modules
directory="$PWD/node_modules"
if [ -z "$(ls $directory)" ]; then
    $PWD/yarn.sh install
fi

docker-compose -p datsu-paiza-template -f $PWD/.local/docker-compose-local/docker-compose.yml $@