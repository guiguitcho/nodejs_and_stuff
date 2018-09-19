#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
NAME=$(hostname)



# Test si besoin du proxy (UGA I love U)
if [ $NAME == "guillaume-RheoDesktop" ]
then
    echo "Building with proxy"
    sudo docker build --build-arg https_proxy=http://152.77.66.130:3128 --build-arg http_proxy=http://152.77.66.130:3128 -t nodejs_and_stuff:0.2 $SCRIPTPATH
else
    sudo docker build --no-cache -t server:0.3 $SCRIPTPATH
fi
