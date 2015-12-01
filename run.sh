#!/bin/bash

N="dmfds-ipynb"
P="9876:8888"
W="/home/dmfds/ipynb"
V="$PWD/ipynb:$W:rw"
I="ryanjoneil/dmfds"

docker rm -f $(docker ps -a | grep $N | awk '{print $1}')
docker run -d --name $N -p $P -w=$W -v=$V $I
