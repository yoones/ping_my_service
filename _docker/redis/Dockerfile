FROM redis:latest

MAINTAINER Younes SERRAJ <younes.serraj@gmail.com>

WORKDIR /redis
COPY ./_docker/redis/redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
