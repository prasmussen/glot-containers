FROM haskell:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

## Install dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends libgmp-dev llvm-dev libghc-terminfo-dev pkg-config libgc-dev build-essential

# Install idris
RUN cabal update && \
    cabal install --global idris

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
