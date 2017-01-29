#!/usr/bin/env bash

if [ ! -n "$SERVER_REDIRECT_TO" ] ; then
    echo "Environment variable SERVER_REDIRECT_TO is not set, exiting."
    exit 1
fi

# set redirect path from optional ENV var
if [ ! -n "$SERVER_REDIRECT_TO_PORT" ] ; then
    echo "Environment variable SERVER_REDIRECT_TO_PORT is not set, exiting."
    exit 1
fi

sed -i "s|\${SERVER_REDIRECT_TO}|${SERVER_REDIRECT_TO}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${SERVER_REDIRECT_TO_PORT}|${SERVER_REDIRECT_TO_PORT}|" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
