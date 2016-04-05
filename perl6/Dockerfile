FROM rakudo-star:latest
MAINTAINER Matt Oates "matt.oates@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
