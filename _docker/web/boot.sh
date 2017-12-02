#!/bin/bash

env="development"
if [ -n "$RAILS_ENV" ]; then
    env="$RAILS_ENV"
fi

cp "./_docker/web/default.conf.$env" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
