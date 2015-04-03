#!/bin/bash

U="dmfds"
W="/home/dmfds/ipynb"
V="$PWD/ipynb:$W:rw"
I="dmfds"

docker run -i -t --rm=true -u=$U -w=$W -v=$V $I
