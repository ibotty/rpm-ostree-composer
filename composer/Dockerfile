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
 && useradd ostree -d $WORKDIR -u $MY_UID ostree \
 && cd $WORKDIR \
 && git clone https://github.com/CentOS/sig-atomic-buildscripts

ADD rpm-ostree-compose-loop /usr/bin/rpm-ostree-compose-loop

VOLUME $WORKDIR
VOLUME $SERVERDIR
CMD /usr/bin/rpm-ostree-compose-loop
