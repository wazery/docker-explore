FROM ubuntu:latest

RUN apt-get update; 
RUN apt-get install -y --force-yes cowsay

ENV PATH /usr/games:$PATH

RUN mkdir /volume

ADD bin /opt/bin

ENTRYPOINT ["/bin/bash","/opt/bin/start.sh"]

# CMD ["cowsay","What does the cowsay?"]