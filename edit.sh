#!/bin/bash

W="/home/dmfds/ipynb"
V="$PWD/ipynb:$W:rw"
I="dmfds"
C="sudo su - dmfds"

docker run -i -t --rm=true -v=$V $I /bin/bash -c "$C"
