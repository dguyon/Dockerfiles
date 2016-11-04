# Description: shfmt (sh/bash formatter)
# in a Docker container
#
# Usage: docker run --rm -it \
# 	dguyon/shfmt [ARG...] [FILE]
#
FROM golang:1.7-alpine
MAINTAINER David Guyon <dguyon@gmail.com>

# init
ENV PATH /go/bin:/usr/local/go/bin:$PATH
ENV GOPATH /go

# system update/install
RUN apk add --no-cache --update --virtual .build-deps \
	go \
	git

# build
RUN go get -u github.com/mvdan/sh/cmd/shfmt \
	&& cd /go/src/github.com/mvdan/sh/cmd/shfmt \
	&& go build -o /usr/bin/shfmt .

# system clean
RUN apk del .build-deps \
 && rm -rf /go

ENTRYPOINT ["shfmt"]
CMD ["-h"]