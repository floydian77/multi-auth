#!/usr/bin/env bash

if [[ ! -f "/etc/nginx/ssl/server.crt" ]]
then
    echo "Generate ssl certificate."

    openssl genrsa -out /etc/nginx/ssl/server.key 3072
    openssl req -new -x509 -key /etc/nginx/ssl/server.key -sha256 -config /etc/nginx/ssl/openssl.conf -out /etc/nginx/ssl/server.crt -days 730
fi
