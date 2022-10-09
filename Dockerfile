FROM ubuntu:22.04

WORKDIR /tmp
ENV TERM xterm


ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get update \
 && apt-get install -y git docker.io wget \
 && wget -q https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz \
 && tar xvfz *.tar.gz \
 && mv linux-amd64/helm /usr/local/bin/. \
 && rm -rf *


WORKDIR /
 
