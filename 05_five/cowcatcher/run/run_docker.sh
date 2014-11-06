#!/bin/bash

# change dir to where this script is running
cd "$( dirname "${BASH_SOURCE[0]}" )"

. ../docker_vars

# ssh requires privilege
# https://github.com/dotcloud/docker/issues/5663

# --privileged
# --restart=always
# --env-file ../docker_vars
# --rm -i -t 

CMD="docker run -d
       -h ${HOST} 
       --name ${NAME} 
        ${IMAGE} 
";

echo $CMD;

UUID=$($CMD);

echo $UUID;

# sleep 10
# ./set_hipache.sh

docker logs $UUID

# change back to wherefor we came
cd -
