#!/bin/bash

VOL="$PWD/ipynb:/ipynb:rw"
docker run -i -t --rm=true -v=$VOL -w=/ipynb dmfds /bin/bash 

