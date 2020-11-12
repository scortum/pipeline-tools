FROM ubuntu:20.04

WORKDIR /tmp

RUN apt-get update \
 && apt-get install -y git docker wget \
 && wget https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz \
 && tar xvfz *.tar.gz \
 && mv linux-amd64/helm /usr/local/bin/.
 
 
