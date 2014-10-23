#!/bin/bash

. docker_vars

echo "bulding ${IMAGE}";

docker build --rm -t ${IMAGE} .
