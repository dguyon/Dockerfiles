#!/usr/bin/env ash

# system update/install
apk --update add curl git php php-json php-phar php-openssl

# build
curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin

# system clean
apk del curl
rm -rf x/var/cache/apk/*