FROM ubuntu

RUN apt-get update && apt-get install -y time

# Python
RUN apt-get install -y python3-pip && \
pip install numpy

# C/C++
RUN apt-get install -y build-essential

# Java
RUN apt-get install -y default-jdk

# JavaScript
RUN apt-get install -y nodejs

CMD ["/usr/bin/bash"]
