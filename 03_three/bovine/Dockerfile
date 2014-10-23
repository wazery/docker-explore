FROM ubuntu:latest

RUN apt-get update; 
RUN apt-get install -y --force-yes cowsay

ENV PATH /usr/games:$PATH

CMD ["cowsay","What does the cowsay?"]