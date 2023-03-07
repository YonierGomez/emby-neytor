FROM quay.io/centos/centos

LABEL MAINTAINER Yonier Gomez yonieer13@gmail.com, version: 4.7.11.0

RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-* \
    && sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-* \
    && dnf -y update && dnf -y install https://github.com/MediaBrowser/Emby.Releases/releases/download/4.7.11.0/emby-server-rpm_4.7.11.0_x86_64.rpm && dnf clean all && dnf swap centos-linux-repos centos-stream-repos -y

RUN mkdir -p multimedia/{videos,musica,peliculas}

WORKDIR /multimedia

EXPOSE 8096 8920 7359/udp 1900/udp

CMD /opt/emby-server/bin/emby-server
