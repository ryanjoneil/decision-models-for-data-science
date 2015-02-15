#!/bin/bash

cp -R custom ~/.ipython/profile_default/static/
cd ipynb
ipython3 notebook --ip=0.0.0.0 --port=8888 --no-browser
