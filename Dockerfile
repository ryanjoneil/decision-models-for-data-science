FROM ubuntu:utopic
RUN apt-get update
RUN apt-get install -y glpk-utils
RUN apt-get install -y libblas-dev
RUN apt-get install -y liblapack-dev
RUN apt-get install -y python3-matplotlib
RUN apt-get install -y python3-numpy
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-scipy
RUN pip3 install cvxopt==1.1.7
RUN pip3 install ipython[all]==3.0.0
RUN pip3 install pulp==1.5.7
RUN pip3 install scikit-learn==0.16.0
