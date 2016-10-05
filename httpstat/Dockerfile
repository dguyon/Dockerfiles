# Description: httpstat (stats on top of cURL)
# in a Docker container
#
# Usage: docker run --rm -it \
# 	dguyon/httpstat [ARG...]
#
FROM golang:1.7-alpine
MAINTAINER David Guyon <dguyon@gmail.com>

ENV PATH /go/bin:/usr/local/go/bin:$PATH
ENV GOPATH /go

COPY build.sh /usr/bin/
RUN build.sh

ENTRYPOINT ["httpstat"]