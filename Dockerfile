FROM ubuntu:14.04
MAINTAINER Philip Hutchins <flipture@gmail.com>

RUN apt-add-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y bitcoind

ENV HOME /bitcoin
RUN useradd -s /bin/bash -m -d /bitcoin bitcoin

ADD bitcoind.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/bitcoind.sh

