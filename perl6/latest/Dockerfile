FROM rakudo-star:latest
MAINTAINER Matt Oates "matt.oates@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install code-runner
ADD https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner /home/glot/runner
RUN chmod +x /home/glot/runner

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]

#Remove terminal colour codes for error reporting from Rakudo compiler output
ENV RAKUDO_ERROR_COLOR 0
ENTRYPOINT "/home/glot/runner"
