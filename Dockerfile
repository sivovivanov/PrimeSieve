FROM ubuntu

RUN apt-get update

# Python
RUN apt-get install -y python3-pip && \
pip install numpy

# C/C++
RUN apt-get install -y build-essential

CMD ["/usr/bin/bash"]
