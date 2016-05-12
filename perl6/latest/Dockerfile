FROM rakudo-star:latest
MAINTAINER Matt Oates "matt.oates@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]

#Remove terminal colour codes for error reporting from Rakudo compiler output
ENV RAKUDO_ERROR_COLOR 0
