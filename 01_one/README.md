

# Docker

 - overview of docker
 - docker pull
 - docker ps 
 - docker run
 - q & a

##  what is it

containers + a great api

 - started by Solomon Hykes dotCloud ~2011
 - like a vm, but not a vm
 - go
 - libcontainer
 - at 1.2
 - layers, at the fs level, each with a uuid
 - built from Dockerfiles
 - results in a group of portable layers


an eco system

 - [public registry at https://registry.hub.docker.com/](https://registry.hub.docker.com/)
 
## `docker pull`

 - trust issues
   - official docker library (aka stackbrew) https://github.com/docker-library/official-images/tree/master/library
   - the dockerfile project http://dockerfile.github.io/



 1. `docker pull ubuntu:14.04`
 2. `docker pull ubuntu:latest`
 3. `docker run ubuntu:latest echo "dockerized!"`


## `docker build`

just a little taste of build today, to understand some things about pull and run

  1. `cd bovine`
  2. `cat Dockerfile`
  3. `./build_docker.sh`

## `docker run`

 1. `docker ps`
 2. `docker run ubuntu echo "dockerized!"`
 3. `docker ps`
 4. `docker ps -a`

### bovine

 1. `docker run -i -t bovine cowsay "dockerized!"`
 2. `docker run --rm -i -t bovine cowsay -l`
 3. `docker run -i -t bovine cowsay -f pony "dockerized!"`

### nginx

https://registry.hub.docker.com/u/dockerfile/nginx/

[http://localhost:8080/](http://localhost:8080/)

 1. `cd ../nginx`
 2. `docker ps -a`
 3. `docker stop lucky_torvalds`
 4. `docker rm lucky_torvalds`
 5. `docker run -d --name nginxone -p 8080:80 -v ${PWD}/html/index.html:/usr/share/nginx/html/index.html dockerfile/nginx`
 6. `docker stop nginxone`
 7. `docker rm nginxone`

## q&a

## extra credit

Highly suggested - Docker Online Tutorial
https://www.docker.com/tryit



### Docker Exploration 01

Benjamin Foote  
bfoote@meedan.net  
October 2014
