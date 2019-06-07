#!/bin/bash

network_name="axolotl"

prefix_name=$(dirname $PWD)

useage()
{
    base=$(basename $0)
    cat <<EOUSAGE
    $base [cmd]

    Available Commands:

    $base cmd   up
    $base cmd   down

    $base exec   [ service ]

EOUSAGE
    exit 1

}

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

exec_container()
{
    container_name=$(docker-compose ps | grep $1_ | awk '{print $1}')
    docker exec -it $container_name sh
}


cmd_container()
{

    case $1 in 
        "up")
            checknetwork
            base
            ;;
        "down")
            docker-compose down
            ;;
        *)
            echo "Error Cmd"
            exit 1
            ;;
    esac
}




case $1  in
    "cmd")
        cmd_container $2
        ;;
    "exec")
        exec_container $2
        ;;
    *)
        useage
        echo "Filed Cmd ;"
        exit 1
        ;;
esac




