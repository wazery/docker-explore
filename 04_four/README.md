

# Docker

   - `docker exec`
   - development workflows
   - practicum
   - q&a
   - next steps


##  docker exec

    - update to 1.3 plz
    - `docker exec -i -t $IMAGE /bin/bash`
    - `env`

##  development workflows

    your dev environment

    1. `git clone git@github.com/meedan/dockerfiles.git`
    2. `cd dockerfiles && cp -avp _skel mycontainer`
    3. _make the magic happen_
       - Dockerfile
       - docker_vars
       	 - IMAGE=${DOCKERREGISTRY}/meedan/mycontainer
       - run_docker.sh
    4. `cd build && ./build_docker.sh && ./push_to_registry.sh` (if it's not from a public repo)
    5. `git add mycontainer && git push origin master`

    on the server

    1. `git clone git@github.com/meedan/dockerfiles.git`
    2. `docker login ${DOCKERREGISTRY}`   
    3. `cd mycontainer`
    4. review and edit docker_vars
    5. ./run_docker.sh

##  practicum

    configure and run a mysql instance, and also a drupal instance
    https://registry.hub.docker.com/_/mysql/
    https://registry.hub.docker.com/u/centurylink/drupal/

    - mysql
        1. copy _skel into a new directory called 'mysql'
    	2. edit docker_vars to reference `mysql`
    	3. run the container

    - drupal
        1. copy _skel into a new directory called 'drupal'
    	2. edit docker_vars to reference `centurylink/drupal`
	3. edit docker_run.sh to include `--link mysql:mysql`
    
## q&a

## next steps

   - `docker save` && `docker load`
   - `VOLUME` and `--volumes-from`
   - docker api access && docker inspect


### Docker Exploration 04

Benjamin Foote  
bfoote@meedan.net  
October 2014
