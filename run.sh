#!/bin/bash

VOL="$PWD/ipynb:/ipynb:rw"
docker run --rm=true --name dmfds-ipynb -p 8888:8888 -v=$VOL -w=/ipynb dmfds \
	/bin/bash -c "ipython3 notebook --ip=0.0.0.0 --port=8888 --no-browser"
