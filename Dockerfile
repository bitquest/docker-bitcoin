FROM debian:stretch
WORKDIR /bitcoin-core
ADD https://bitcoin.org/bin/bitcoin-core-0.17.0/bitcoin-0.17.0-x86_64-linux-gnu.tar.gz /bitcoin-core/
RUN tar xzvf bitcoin-0.17.0-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin bitcoin-0.17.0-x86_64-linux-gnu/bin/*
ADD bitcoin.conf /root/.bitcoin/bitcoin.conf
CMD bitcoind