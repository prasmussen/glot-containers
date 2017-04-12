FROM supermina999/alpine-kotlin:latest
MAINTAINER Petter Rasmussen "nishtahir@outlook.com"

# Add user
RUN addgroup glot
RUN adduser -h /home/glot -D -G glot -s /bin/bash glot

# Install code-runner
ADD https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner /home/glot/runner
RUN chmod +x /home/glot/runner

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
