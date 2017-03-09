FROM ubuntu:xenial
MAINTAINER sh@analogic.cz

# inspired by https://github.com/moneroexamples/private-testnet

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /
ENTRYPOINT ["/init"]

ADD https://downloads.getmonero.org/linux64 /tmp/
RUN apt-get update && apt-get install -y --no-install-recommends nmap bzip2 screen && \
    cd /tmp && tar xvf linux64 && cp -R monero*/* /usr/bin && \
    apt-get remove -y bzip2 && rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 28080 38080

VOLUME ["/data"]
ADD rootfs /
