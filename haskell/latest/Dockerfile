FROM haskell:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install libs
RUN cabal update && \
    cabal install --global --lib \
        async \
        attoparsec \
        case-insensitive \
        cgi \
        exceptions \
        fgl \
        free \
        hashable \
        html \
        mtl \
        multipart \
        network \
        network-uri \
        ObjectName \
        old-locale \
        old-time \
        parallel \
        parsec \
        primitive \
        QuickCheck \
        random \
        regex-base \
        regex-compat \
        regex-posix \
        scientific \
        split \
        StateVar \
        stm \
        syb \
        text \
        tf-random \
        transformers \
        transformers-compat \
        unordered-containers \
        vector \
        xhtml \
        zlib

# Install code-runner
ADD https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner /home/glot/runner
RUN chmod +x /home/glot/runner

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
