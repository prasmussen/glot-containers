FROM haskell:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install libs
RUN cabal update && \
    cabal install --global mtl

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
