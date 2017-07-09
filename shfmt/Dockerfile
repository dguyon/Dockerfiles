# Description: shfmt (sh/bash formatter)
# in a Docker container
#
# Usage: docker run --rm -it \
# 	gyndav/shfmt [ARG...] [FILE]
#
FROM golang:1.8-alpine
MAINTAINER David Guyon <dguyon@gmail.com>

# init
ENV PATH /go/bin:/usr/local/go/bin:$PATH
ENV GOPATH /go

COPY build.sh /usr/bin/
RUN build.sh

ENTRYPOINT ["shfmt"]
CMD ["-h"]