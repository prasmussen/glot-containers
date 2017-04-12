FROM steinwaywhw/ats:latest
MAINTAINER Steinway Wu "https://github.com/steinwaywhw/docker-ats"

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

ENV CLASSPATH=${HOME}/clojure-1.8.0/*:${CLASSPATH}:
ENV ATSHOME=/tmp/ats-lang-anairiats-0.2.12
ENV ATSHOMERELOC=ATS-0.2.12
ENV PATSHOME=/tmp/ATS2
ENV PATSHOMERELOC=/tmp/ATS2-contrib
ENV PATSHOME_contrib=/tmp/ATS2-contrib
ENV PATH=${PATSHOME}/bin:${PATH}
