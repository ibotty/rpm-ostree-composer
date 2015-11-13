FROM fedora:23
MAINTAINER tob@butter.sh

ENV WORKDIR=/home/ostree
ENV SERVERDIR=/srv/ostree
ENV MY_UID=1000

RUN dnf --setopt=tsflags=nodocs -y install \
        rpm-ostree git nss_wrapper \
 && dnf clean all \
 && mkdir $SERVERDIR \
 && chmod 0777 $SERVERDIR \
 && useradd -d $WORKDIR -u $MY_UID ostree \

ADD rpm-ostree-compose-loop /usr/bin/rpm-ostree-compose-loop

USER 1000

VOLUME $WORKDIR
VOLUME $SERVERDIR

CMD ["/usr/bin/rpm-ostree-compose-loop"]
