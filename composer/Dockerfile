FROM fedora:23
MAINTAINER tob@butter.sh

ENV WORKDIR=/home/ostree
ENV SERVERDIR=/srv/ostree
ENV MY_UID=1000

RUN dnf --setopt=tsflags=nodocs -y install \
        rpm-ostree git nss_wrapper \
 && dnf clean all \
 && useradd -d $WORKDIR -u $MY_UID ostree \
 && mkdir $SERVERDIR \
 && chmod 0777 $SERVERDIR $WORKDIR

ADD rpm-ostree-compose /usr/bin/rpm-ostree-compose

USER 1000

VOLUME $WORKDIR
VOLUME $SERVERDIR

CMD ["/usr/bin/rpm-ostree-compose"]
