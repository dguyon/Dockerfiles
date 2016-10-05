#!/usr/bin/env ash

# system update/install
apk add --no-cache --update curl git subversion

# build
curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin

# system clean
rm -rf /var/cache/apk/*