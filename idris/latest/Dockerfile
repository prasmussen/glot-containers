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

# Install code-runner
ADD https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner /home/glot/runner
RUN chmod +x /home/glot/runner

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
