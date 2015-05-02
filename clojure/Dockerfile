FROM clojure:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Add link to clojure in a location searched by code-runner
RUN ln -s /root/.lein/self-installs/leiningen-*-standalone.jar /usr/share/java/clojure.jar

# Allow execution by glot inside root
RUN chmod 755 root

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
