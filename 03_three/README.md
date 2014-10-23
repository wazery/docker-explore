

# Docker

   - docker networking
   - docker registry
   - our images
   - q&a
   - next steps


##  docker networking

    - ports
      1. `EXPOSE`   
      2. `-p`   
      3. `docker port CONTAINER PRIVATE_PORT`   

    - ip
      1. `--name` and `--link`   
      2. `--host`   
      2. `--dns`   

##  docker registry

    2. http://registry-ui.dev.meedan.net  
    2. https://dreg.meedan.net   
    1. `docker login dreg.meedan.net`   
    1. install the ca cert   
    1. `docker login -u meedan dreg.meedan.net`   
    3. `curl -u meedan https://dreg.meedan.net/v1/search?q=storm`   
    1. set env var `export DOCKERREGISTRY=dreg.meedan.net`   
    1. `cd bovine`
       - edit Dockerfile
       - build
    4. docker tag $IMAGE $DOCKERREGISTRY/$IMAGE   

##  our images

    - verne   
	- https://github.com/meedan/translatedesk-storm/tree/docker-db   
    	- https://github.com/meedan/translatedesk-storm/tree/docker-storm   
    	- https://github.com/meedan/translatedesk-api/tree/docker   
    - meedan
        - https://github.com/meedan/dockerfiles   
	- base  https://github.com/meedan/dockerfiles/tree/master/base   
    	- _skel https://github.com/meedan/dockerfiles/tree/master/_skel   
	- php-myadmin https://github.com/meedan/dockerfiles/tree/master/php-myadmin   
    
## q&a


## next steps

   1. `docker exec`
   1. looking at istanbul together
   2. talking about development workflows

### Docker Exploration 03

Benjamin Foote  
bfoote@meedan.net  
October 2014
