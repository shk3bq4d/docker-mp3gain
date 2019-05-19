#!/usr/bin/env bash

set -eu
DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" && pwd )"
cd $DIR
#set -x
TAG=$(./tag.sh)
BUILD_DIR=$DIR/build
FILE=$DIR/Dockerfile

test -d $BUILD_DIR || mkdir $BUILD_DIR

cd $BUILD_DIR
set -x
docker build \
	-f $FILE \
	-t $TAG \
	.

docker images $TAG
