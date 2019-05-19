#!/usr/bin/env bash


DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" && pwd )"

echo "shk3bq4d/$(basename "$DIR" | sed -e 's/^docker-//'):latest"
