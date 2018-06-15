#!/usr/bin/env bash
set -e

source ./env.sh

docker rmi ${IMAGE}:${VERSION}
docker rmi ${IMAGE}:latest
