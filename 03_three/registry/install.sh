#!/bin/bash


mkdir /usr/local/share/ca-certificates/meedan-docker

cp ca-certs/docker-regCA.crt /usr/local/share/ca-certificates/meedan-docker/

update-ca-certificates
