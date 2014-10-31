#!/bin/bash

# change dir to where this script is running
cd ${0%/*}

. ../docker_vars

docker run --rm -i -t set-hipache /opt/bin/set_hipache_for_container.sh ${NAME}.${WILDCARDDOMAIN} ${NAME} ${PORT}

cd -
