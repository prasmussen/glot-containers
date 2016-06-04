FROM python:2
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Install libs
RUN pip install \
    cachetools \
    nose \
    numpy \
    python-dateutil \
    pytz \
    six

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
