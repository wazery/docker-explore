#!/bin/bash

CURDIR=${PWD}

EXTRA=$1

cd "$( dirname "${BASH_SOURCE[0]}" )";

. ../docker_vars

echo "bulding ${IMAGE}";

# docker rmi ${IMAGE}
# docker build --no-cache --rm -t ${IMAGE} .
docker build ${EXTRA} --rm -t ${IMAGE} .

cd ${CURDIR};