FROM node:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Set locale
ENV LANG C.UTF-8

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install elm
RUN npm install -g elm --unsafe-perm=true --allow-root

# Bootstrap an elm app
RUN mkdir /bootstrap && \
    cd /bootstrap && \
    npm install jsdom && \
    elm-package install -y elm-lang/html && \
    elm-package install -y elm-lang/svg && \
    elm-package install -y evancz/elm-markdown && \
    elm-package install -y elm-community/list-extra && \
    elm-package install -y elm-community/maybe-extra && \
    elm-make


# Install code-runner
ADD https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner /home/glot/runner
RUN chmod +x /home/glot/runner

# Copy files
COPY files/app.js /bootstrap/

RUN chown glot:glot -R /bootstrap

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
