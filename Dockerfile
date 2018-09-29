FROM ubuntu:bionic
MAINTAINER sh@analogic.cz

# inspired by https://github.com/moneroexamples/private-testnet

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz \
    https://github.com/monero-project/monero/releases/download/v0.12.3.0/monero-linux-x64-v0.12.3.0.tar.bz2 \
    /tmp/

RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C / && \
    apt-get update && apt-get install -y --no-install-recommends bzip2 && \
    cd /tmp && tar xfj monero-linux*.tar.bz2 && cp -R monero*/* /usr/bin && \
    apt-get remove -y bzip2 && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 28080 38080 28081 38081 28082 38082

ENTRYPOINT ["/init"]
VOLUME ["/data"]
ADD rootfs /
