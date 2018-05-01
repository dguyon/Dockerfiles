#!/usr/bin/env bash
set -e
set -o pipefail

RELEASE=${RELEASE:-false}
AWSCLI_VERSION="1.15.11"

docker build --force-rm --build-arg AWSCLI_VERSION=${AWSCLI_VERSION} -t dguyon/awscli .
docker tag dguyon/awscli dguyon/awscli:${AWSCLI_VERSION}

if [[ ${RELEASE} == true ]]; then
	docker push dguyon/awscli
	docker push dguyon/awscli:${AWSCLI_VERSION}
fi
