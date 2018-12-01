#!/bin/bash
set -e #stops at exception
image=${REGISTRY}/votingapp:${TAG}
app="votingapp"

docker-compose down
docker-compose up -d --build
docker-compose run --rm votingapp-test
docker-compose push votingapp

