FROM ruby:latest

MAINTAINER Younes SERRAJ <younes.serraj@gmail.com>

RUN sed -i 's/main/main contrib/g' /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y --no-install-recommends nodejs cron

WORKDIR /app
COPY Gemfile* ./
RUN bundle install

CMD ["./_docker/app/boot.sh"]
