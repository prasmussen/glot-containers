FROM clojure:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Move lein dir to glot
RUN mv -f /root/.lein /home/glot/
RUN chown glot:glot /home/glot/.lein -R

# Add link to clojure in a location searched by code-runner
RUN ln -s /home/glot/.lein/self-installs/leiningen-*-standalone.jar /usr/share/java/clojure.jar

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
