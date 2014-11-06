#!/bin/bash

# change dir to where this script is running
cd "$( dirname "${BASH_SOURCE[0]}" )"

. ../docker_vars

docker stop $NAME;
docker rm $NAME;

# sleep 3;


DCMD="/opt/bin/start.sh";

if [ "" != "$1" ];
then
    DCMD=$*;
fi


# ssh requires privilege
# https://github.com/dotcloud/docker/issues/5663

# --privileged
# --restart=always
# --env-file ../docker_vars
# --rm -i -t 

CMD="docker run -d
       -h ${HOST} 
       --name ${NAME} 
       -v ${PWD}/bin:/opt/bin
       -v ${PWD}/config:/opt/config
        ${IMAGE} 
        ${DCMD}
";

echo $CMD;

UUID=$($CMD);

echo $UUID;

# sleep 10
# ./set_hipache.sh

docker logs $UUID

# change back to wherefor we came
cd -