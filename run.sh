#!/usr/bin/env bash

docker run \
    --rm \
    -v $PWD:$PWD \
    -v /home:/home \
    -v /tmp:/tmp \
    -it \
    $(./tag.sh) \
    mp3gain \
    "$@"
