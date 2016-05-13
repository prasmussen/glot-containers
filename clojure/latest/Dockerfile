FROM clojure:latest
MAINTAINER Petter Rasmussen "petter.rasmussen@gmail.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Add clojure.jar link
RUN ln -s /usr/share/java/leiningen-*-standalone.jar /usr/share/java/clojure.jar

# Copy files
COPY files/runner /home/glot/

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
