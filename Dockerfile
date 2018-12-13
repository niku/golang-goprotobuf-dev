FROM debian:stretch-backports

RUN mkdir /app && \
    apt-get update -qq && \
    apt-get install -t stretch-backports -y \
                protobuf-compiler \
                golang-goprotobuf-dev

WORKDIR /app
