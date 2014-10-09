
# Dockerfile with anotations
# Benjamin Foote
# bfoote@meedan.net
# October 2014

FROM dockerfile/nginx
# FROM is the starting point, designates an image which you will build from
# https://registry.hub.docker.com/u/dockerfile/nginx/dockerfile/

MAINTAINER you@meedanlabs.com
# just meta data that gets carried around with the image
# - not required but a good practice

RUN apt-get update; 
# RUN runs programs inside the container
# `apt-get update` is best practice for Ubuntu/Debian images to ensure that you are able to 
# download the latest software with the correct dependencies 

# RUN apt-get install -y --force-yes cowsay
# we're not installing any additional software for this example

ADD ./html/index.html /usr/share/nginx/html/index.html
# or
# ADD ./html /usr/share/nginx/html

# ADD from/here/filname.txt /to/here
# - adds either files or whole directories
# - will create directories in the image implicitly (like `mkdir -p`)

ENV BUILDMONTH OCTOBER
# just a demonstration of usage of ENV
# - environmental vars will persist with the image
# - can be overridden in `docker run` with `-e NAME="val"`

EXPOSE 80
# exposes port 80 from this container for *possible* usage

CMD ["nginx"]
# the default cmd that gets run, unless one is supplied during the `docker run` call
# - can also be expressed as `CMD nginx` though the preferred form is `CMD ["nginx"]`
# - CMD ["executable","param1","param2"]
# - the one without brackets gets fed to `/bin/sh`, the one with is like an `exec`
# - works with ENTRYPOINT
# - the relationship between CMD and ENTRYPOINT can be confusing at first

