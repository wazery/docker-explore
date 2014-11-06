#!/bin/bash

# change dir to where this script is running
cd ${0%/*}

. config/docker_vars

for D in "${DOMAINS[@]}"
do
    docker run --rm -i -t set-hipache /opt/bin/set_hipache_for_container.sh ${D} ${NAME} ${PORT}
done

cd -
