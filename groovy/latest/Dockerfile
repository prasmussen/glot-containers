FROM webratio/groovy:latest
MAINTAINER Nish Tahir "nishtahir@outlook.com"

# Add user
RUN groupadd glot
RUN useradd -m -d /home/glot -g glot -s /bin/bash glot

# Prepare groovy env for glot
RUN rm /root/.gvm/groovy/current
RUN mv /root/.gvm /home/glot/
RUN ln -s /home/glot/.gvm/groovy/2.* /home/glot/.gvm/groovy/current
RUN chown glot:glot -R /home/glot/.gvm/groovy/current
ENV GROOVY_HOME /home/glot/.gvm/groovy/current
ENV PATH $GROOVY_HOME/bin:$PATH

# Install code-runner
ADD https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner /home/glot/runner
RUN chmod +x /home/glot/runner

USER glot
WORKDIR /home/glot/
CMD ["/home/glot/runner"]
ENTRYPOINT "/home/glot/runner"
