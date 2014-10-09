#!/bin/bash

IMAGE="bovine"

echo "bulding ${IMAGE}";

docker build --rm -t ${IMAGE} .
