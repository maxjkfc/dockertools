#!/bin/bash

network_name="axolotl"

checknetwork()
{
    #check network
    r=$(docker network ls | grep "$network_name")
    if [  -z "$r" ]; then
        echo "Not Find Network"
        docker network create "$network_name"
    fi
}

base(){

    # start docker-compose
    docker-compose  up -d

    # check the docker-compose
    docker-compose  ps

}


init_roach()
{
    cmd="docker exec -it dockertools_roachdb_1 ./cockroach"
    user='admin'
    db='iosh'
    # create admin -- no use password
    $cmd user set "$user" --insecure
    # create the project db
    $cmd sql --insecure -e "CREATE DATABASE $db"
    # Grant the privileges
    $cmd sql --insecure -e "GRANT ALL ON DATABASE $db TO $user"
}


checknetwork

base



