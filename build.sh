#!/bin/bash

set -e

HOST_UID=$(id -u $USER)
HOST_GID=$(id -g $USER)

cat <<EOF > Dockerfile
FROM ubuntu:trusty

RUN apt-get install -y wget

RUN wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.4.0-Linux-x86_64.sh
RUN bash /Anaconda3-2.4.0-Linux-x86_64.sh -b -p /opt/conda3
RUN rm /Anaconda3-2.4.0-Linux-x86_64.sh
RUN /opt/conda3/bin/pip install pulp==1.6.0

RUN groupadd -r dmfds -g $HOST_GID
RUN useradd -r -g dmfds -u $HOST_UID -m -d /home/dmfds -s /bin/bash \
	-c "Decision Models for Data Science" dmfds
RUN mkdir /home/dmfds/ipynb
RUN chown dmfds:dmfds /home/dmfds/ipynb

USER dmfds
WORKDIR /home/dmfds/ipynb

ENTRYPOINT /opt/conda3/bin/ipython notebook --ip=0.0.0.0 --port=8888 --no-browser
EOF

docker build --force-rm=true --tag="ryanjoneil/dmfds" .
rm Dockerfile
