#!/bin/bash

# change dir to where this script is running
cd "$( dirname "${BASH_SOURCE[0]}" )"

. ../docker_vars

CMD="docker run -d
       -h ${HOST} 
       --name ${NAME} 
       -v ${PWD}/volumes/cowsay:/volume
        ${IMAGE} 
";

echo $CMD;

UUID=$($CMD);

echo $UUID;

docker logs $UUID

# change back to wherefor we came
cd -
