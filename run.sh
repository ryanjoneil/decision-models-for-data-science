#!/bin/bash

N="dmfds-ipynb"
P="8888:8888"
W="/home/dmfds/ipynb"
V="$PWD/ipynb:$W:rw"
I="dmfds"
C="sudo -H -u dmfds ipython3 notebook --ip=0.0.0.0 --port=8888 --no-browser"

docker rm -f $(docker ps -a | grep $N | awk '{print $1}')
docker run -d --name $N -p $P -w=$W -v=$V $I /bin/bash -c "$C"
