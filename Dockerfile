FROM ubuntu:xenial
MAINTAINER oliver@weichhold.com

RUN ls -al /

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz /
ADD https://downloads.getmonero.org/linux64 /tmp/

RUN ls -al /

RUN apt-get update && apt-get install -y --no-install-recommends bzip2 && \
    cd /tmp && cp -R monero*/* /usr/bin && \
    apt-get remove -y bzip2 && rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 28080 38080 28081 38081 28082 38082

ENTRYPOINT ["/init"]
VOLUME ["/data"]
ADD rootfs /

