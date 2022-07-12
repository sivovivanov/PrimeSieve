FROM ubuntu:22.04

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/London"

# Necessary binaries
RUN apt-get update && apt-get install -y time curl

# Python
RUN apt-get install -y python3-pip && \
pip install numpy

# C/C++
RUN apt-get install -y build-essential

# Java
RUN apt-get install -y default-jdk

# JavaScript
RUN apt-get install -y nodejs

# Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# PHP
RUN apt-get install -y php8.1 

CMD ["/usr/bin/bash"]
