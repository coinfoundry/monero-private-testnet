FROM ubuntu:xenial
MAINTAINER oliver@weichhold.com

RUN ls -al /

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz /
ADD https://downloads.getmonero.org/linux64 /tmp/

RUN ls -al /

RUN cd /tmp && cp -r monero*/* /usr/bin && rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 28080 38080 28081 38081 28082 38082

ENTRYPOINT ["/init"]
VOLUME ["/data"]
ADD rootfs /

