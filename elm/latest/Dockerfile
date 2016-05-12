FROM node:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Set locale
ENV LANG C.UTF-8

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install elm
RUN npm install -g elm

# Bootstrap an elm app
RUN mkdir /bootstrap && \
    cd /bootstrap && \
    elm-package install -y laszlopandy/elm-console && \
    elm-make

# Copy files
COPY files/elm-io.sh /bootstrap/
COPY runner /home/glot/

RUN chown glot:glot -R /bootstrap

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
