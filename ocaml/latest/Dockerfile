FROM ubuntu:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Install ocaml
RUN apt-get update
RUN apt-get install -y ocaml

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
