FROM nowk/alpine-bare:3.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

RUN apk --update add \
    bash \
    make \
    curl wget \
    git \
    && rm -rf /var/cache/apk/*

LABEL \
    version=$ALPINE_VERSION \
    os="linux" \
    arch="amd64"
