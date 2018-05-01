# Description: awscli (aws official cli)
# in a Docker container
#
# Usage: docker run --rm -it \
#   -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
#   -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
#   -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" \
#   -v "$(pwd):/aws-data" \
#   dguyon/awscli [SERVICE] [COMMAND] [ARG...]
#
FROM alpine:3.7
LABEL maintainer "David Guyon <dguyon@gmail.com>"

ARG AWSCLI_VERSION
ENV RUN_DEPS "ca-certificates groff less python"
ENV BUILD_DEPS "py2-pip"

RUN apk add --update --no-cache \
    "$RUN_DEPS" \
    "$BUILD_DEPS" \
    && pip install "awscli==$AWSCLI_VERSION" \
    && apk --purge del "$BUILD_DEPS" \
    && mkdir -p /root/.aws \
    && { \
        echo '[default]'; \
        echo 'output = json'; \
    } > /root/.aws/config

VOLUME /aws-data
WORKDIR /aws-data
ENTRYPOINT [ "aws" ]
