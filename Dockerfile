FROM gliderlabs/alpine:3.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

ENV ALPINE_VERSION 3.2

RUN apk --update add \
    bash \
    make \
    curl wget \
    openresolv \
    git \
    && rm -rf /var/cache/apk/*

# namespace 8.8.8.8 to fix DNS resolutions in rocket
ADD etc/resolv.conf /etc/resolv.conf

LABEL \
    version=$ALPINE_VERSION \
    os="linux" \
    arch="amd64"
