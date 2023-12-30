# Seems ubuntu dropped the repo after 20.04
FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update

RUN apt-get install -y software-properties-common apt-transport-https

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94

RUN add-apt-repository https://dl.hhvm.com/ubuntu

RUN apt-get update

RUN apt-get install -y hhvm

WORKDIR /code

COPY bin .

# This a daemon that watches the filesystem
# Not neccessary for this demo
# RUN hh_client

CMD ""
