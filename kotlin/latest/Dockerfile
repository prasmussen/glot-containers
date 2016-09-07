FROM supermina999/alpine-kotlin:latest
MAINTAINER Petter Rasmussen "nishtahir@outlook.com"

# Add user
RUN addgroup glot
RUN adduser -h /home/glot -D -G glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
