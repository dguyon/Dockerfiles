#!/usr/bin/env ash

# system update/install
apk add --no-cache --update --virtual .build-deps \
	go \
	git \
	ca-certificates

# build
go get -u github.com/davecheney/httpstat
cd /go/src/github.com/davecheney/httpstat
go build -o /usr/bin/httpstat .

# system clean
apk del .build-deps
rm -rf /go