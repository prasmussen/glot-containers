FROM haskell:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install libs
RUN cabal update && \
    cabal install --global \
        async \
        attoparsec \
        case-insensitive \
        cgi \
        exceptions \
        fgl \
        free \
        hashable \
        haskell-src \
        html \
        HTTP \
        HUnit \
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

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
