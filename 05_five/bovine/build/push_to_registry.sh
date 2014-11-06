#!/bin/bash

CURDIR=${PWD}

cd "$( dirname "${BASH_SOURCE[0]}" )";

DREG=${DOCKERREGISTRY};

. ../docker_vars

echo "pushing ${IMAGE} to ${DREG}/${IMAGE}";

docker tag ${IMAGE} ${DREG}/${IMAGE};
docker push ${DREG}/${IMAGE};

cd ${CURDIR};