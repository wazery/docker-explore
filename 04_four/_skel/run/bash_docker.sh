#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )";

. ../docker_vars

docker stop ${NAME}-bash;
docker rm ${NAME}-bash;

# requires privilege due to ssh
# https://github.com/dotcloud/docker/issues/5663

docker run \
       -t -i  \
       -h ${HOST}-bash \
       --name ${NAME}-bash \
      ${IMAGE}  \
       /bin/bash \
;

