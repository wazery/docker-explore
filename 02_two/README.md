

# Docker

 - docker info
 - docker help
 - docker build
 - Dockerfile
 - q & a

##  `docker info`

    1. `docker info`

##  `docker help`

    1. `docker help`
    2. `docker help run`
    3. `docker help build`


##  `docker build` (bovine edition)

    1. `cd bovine` 
    2. `docker build -t bovine .`
    3. `docker build -t bovine .` (again)
    4. `docker images`
    5. `docker rmi bovine`
    6. `docker build -t bovine .`

##  `docker build` (nginx edition)

###  Dockerfile

    1. `cd nginx` 

 - FROM 
 - MAINTAINER  
 - RUN  
 - ADD 
 - ENV 
 - EXPOSE
 - CMD 

   2. `docker build -t mynginx .`
   3. `docker run -d --name nginxtwo -p 8080:80 mynginx`
   3. `docker build -t mynginx .` (again)
   4. `docker build --no-cache -t mynginx .`

## q&a


## next steps

   1. docker networking (how to find your running containers, how they find each other)
   2. a look at our images, build and run environments
   3. pulling from our private registry

## extra credit

 1. search the public registry https://registry.hub.docker.com/ for an image
 2. use the image in a Dockerfile with `FROM imagename`
 3. build it and tag it
https://www.docker.com/tryit


### Docker Exploration 02

Benjamin Foote  
bfoote@meedan.net  
October 2014
