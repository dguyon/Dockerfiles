#!/usr/bin/env ash

# system update/install
apk add --no-cache --update --virtual .build-deps \
	go \
	git

# build
go get -u github.com/mvdan/sh/cmd/shfmt \
	&& cd /go/src/github.com/mvdan/sh/cmd/shfmt \
	&& go build -o /usr/bin/shfmt .

# system clean
apk del .build-deps \
	&& rm -rf /go