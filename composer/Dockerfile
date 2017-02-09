# Description: Composer (Dependency Manager for PHP)
# in a Docker container
#
# Usage: docker run --rm -it \
# 	-v $(PWD):/srv \
# 	gyndav/composer [COMMAND] [ARG...]
#
FROM php:7.1-alpine
MAINTAINER David Guyon <dguyon@gmail.com>

ENV COMPOSER_NO_INTERACTION 1

COPY build.sh /usr/bin/
RUN build.sh

VOLUME ["/srv"]
WORKDIR /srv

ENTRYPOINT ["composer", "--ansi"]