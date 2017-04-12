FROM ubuntu:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

RUN apt-get update
RUN apt-get install -y nasm binutils

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
