FROM nginx:latest

MAINTAINER Younes SERRAJ <younes.serraj@gmail.com>

RUN apt-get update
RUN apt-get -y upgrade

WORKDIR /app

CMD ["./_docker/web/boot.sh"]
