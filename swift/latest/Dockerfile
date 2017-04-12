FROM swift:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Grant access to swift files for all users
RUN chmod 0755 /usr/lib/swift -R

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
