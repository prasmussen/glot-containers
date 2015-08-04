FROM ubuntu:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Install dlang
RUN apt-get update
RUN apt-get install -y wget
RUN wget http://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
RUN apt-get update && \
    apt-get install -y --no-install-recommends --allow-unauthenticated d-apt-keyring dmd-bin

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
