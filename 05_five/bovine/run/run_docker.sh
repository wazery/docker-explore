#!/bin/bash

# change dir to where this script is running
cd "$( dirname "${BASH_SOURCE[0]}" )"

. ../docker_vars

# --volumes-from cowcatcher
# --volumes-from rangler

CMD="docker run
       --rm -i -t 
       -h ${HOST} 
       --name ${NAME} 
        ${IMAGE} $1 ${@:2}";

echo $CMD;

$CMD;

# change back to wherefor we came
# cd -
