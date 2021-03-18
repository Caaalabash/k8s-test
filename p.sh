#!/bin/bash

project_name=test

docker_compose_cmd="docker-compose -p ${project_name} -f deploy/docker-compose.yml"

build(){
    ${docker_compose_cmd} build
}

start(){
    ${docker_compose_cmd} up -d
}

down(){
    ${docker_compose_cmd} down
}

restart(){
    ${docker_compose_cmd} down
    sleep 2
    ${docker_compose_cmd} up -d
}

if [ "$1" == "start" ]; then
    start
elif [ "$1" == "down" ]; then
    down
elif [ "$1" == "build" ]; then
    build
elif [ "$1" == "restart" ]; then
    restart
elif [ "$1" == "" ]; then
    echo "help"
fi


