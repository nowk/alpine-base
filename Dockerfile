FROM gliderlabs/alpine:3.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

RUN apk --update add \
    bash make curl wget \
    openresolv \
    && rm -rf /var/cache/apk/* \
    && echo 'nameserver 8.8.8.8' > /etc/resolv.conf

