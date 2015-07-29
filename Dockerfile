FROM gliderlabs/alpine:3.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

RUN apk --update add \
  bash make curl \
  && rm -rf /var/cache/apk/*
