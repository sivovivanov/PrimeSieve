FROM ubuntu

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

CMD ["/usr/bin/bash"]
