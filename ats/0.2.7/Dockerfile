FROM steinwaywhw/ats:0.2.7
MAINTAINER Steinway Wu "https://github.com/steinwaywhw/docker-ats"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
