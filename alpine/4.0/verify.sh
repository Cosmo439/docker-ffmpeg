#!/usr/bin/env bash
set -e

source env.sh

docker run -it --rm -v `pwd`:/workdir ${IMAGE}:latest "$@"


