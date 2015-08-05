# Description: Composer (Dependency Manager for PHP)
# in a Docker container
#
# Usage: docker run --rm -it \
# 	-v $(PWD):/srv \
# 	dguyon/composer [COMMAND] [ARG...]
#
FROM alpine:latest
MAINTAINER David Guyon <dguyon@gmail.com>

ENV COMPOSER_NO_INTERACTION 1

COPY build.sh /usr/bin/
RUN build.sh

VOLUME ["/srv"]
WORKDIR /srv

ENTRYPOINT ["composer"]