#!/usr/bin/env bash

set -euo pipefail
DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" && pwd )"
cd $DIR

docker push $(./tag.sh )
if [[ -z "$(git status --porcelain)" ]] # working directory clean
then
	revtag=$(./tag.sh | sed -r "s/:latest$/:$(git rev-parse HEAD)/")
	docker image tag $(./tag.sh) $revtag
	set -x
	docker push $revtag
else
	echo "not pushing revtag"
fi
