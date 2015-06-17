FROM ubuntu:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install deps
RUN apt-get update && \
    apt-get build-dep -y php5 && \
    apt-get install -y git make autoconf build-essential g++ libc6-dev

# Copy php
COPY files/php-7.0.0alpha1.tar.gz /tmp/

RUN cd /tmp/ && \
    tar -zxf php-7.0.0alpha1.tar.gz

# Build php
RUN cd /tmp/php-7.0.0alpha1 && \
    ./buildconf --force && \
    ./configure --quiet && \
    make --quiet && \
    make install

# Clean up
RUN rm -rf /tmp/*

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
