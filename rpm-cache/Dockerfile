FROM fedora:23
MAINTAINER tob@butter.sh

RUN dnf --setopt=tsflags=nodocs -y install \
        polipo \
 && dnf clean all \
 && echo polipo id $(id -u polipo) \
 && test $(id -u polipo) -eq 995 \
 && mkdir -p /var/run/polipo \
 && chmod 0777 /var/run/polipo \
 && chmod 0777 /var/cache/polipo

ADD entrypoint.sh /
USER 995
EXPOSE 8123

#CMD ["/usr/bin/polipo", "diskCacheRoot=/var/cache/polipo", "daemonise=false", "logFile=/dev/stdout"]
CMD /entrypoint.sh
