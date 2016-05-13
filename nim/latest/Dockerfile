FROM ubuntu:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

ENV LANG C.UTF-8
ENV NIM_VERSION 0.13.0

# Install build tools, etc
RUN apt-get update -qq && \
    apt-get install -y patch gcc wget xz-utils

# Download and compile nim
RUN wget http://nim-lang.org/download/nim-${NIM_VERSION}.tar.xz && \
    tar -xvf nim-${NIM_VERSION}.tar.xz && \
    cd nim-${NIM_VERSION} && \
    chmod +x build.sh install.sh && \
    ./build.sh && \
    ./install.sh /usr/bin && \
    apt-get autoremove -y wget xz-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
