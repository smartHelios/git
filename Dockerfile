FROM alpine:3.13.0

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk add --no-cache \
    curl \
    yq \
    git \
    openssh \
    bash

# install yq YAML processor
RUN wget https://github.com/mikefarah/yq/releases/download/3.4.1/yq_linux_amd64 -O /usr/bin/yq &&\
    chmod +x /usr/bin/yq