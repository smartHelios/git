FROM alpine:3.16.2

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk add --no-cache \
    curl \
    yq \
    git \
    openssh \
    jq \
    bash
