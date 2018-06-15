#!/usr/bin/env bash
set -ex

source ./env.sh

# rm -fr temp
# mkdir temp
# cd temp

# curl -O "http://ffmpeg.org/releases/ffmpeg-${FFMPEG_VERSION}.tar.bz2" -o ffmpeg.tar.bz2

# cd ..

docker build \
  --build-arg FFMPEG_VERSION=${FFMPEG_VERSION} \
  "$@" -t ${IMAGE}:latest .
