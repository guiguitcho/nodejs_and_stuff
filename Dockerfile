FROM node:8.12

RUN apt-get update -y && apt install lbzip2

ADD bin /usr/bin
