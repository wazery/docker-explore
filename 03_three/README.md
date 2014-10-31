

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
      3. `--dns`   

##  docker registry

    1. http://registry-ui.dev.meedan.net  
    2. https://dreg.meedan.net   
    3. `docker login dreg.meedan.net`   
    4. install the ca cert   
    5. `docker login -u meedan dreg.meedan.net`   
    6. `curl -u meedan https://dreg.meedan.net/v1/search?q=storm`   
    7. set env var `export DOCKERREGISTRY=dreg.meedan.net`   
    8. `cd bovine`
       - edit Dockerfile
       - build
    9. docker tag $IMAGE $DOCKERREGISTRY/$IMAGE   

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

   - `docker exec`
   - looking at istanbul together
   - talking about development workflows

### Docker Exploration 03

Benjamin Foote  
bfoote@meedan.net  
October 2014
