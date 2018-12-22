FROM debian:stretch-backports

ENV HOME /app
WORKDIR $HOME

RUN mkdir -p $HOME && \
    apt-get update -qq && \
    apt-get install -t stretch-backports -y \
                protobuf-compiler \
                python3-protobuf
