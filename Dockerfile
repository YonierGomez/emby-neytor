FROM fedora:40

LABEL MAINTAINER Yonier Gomez yonieer13@gmail.com, version: 4.7.14.0

RUN dnf -y update && dnf -y install \
    https://github.com/MediaBrowser/Emby.Releases/releases/download/4.7.14.0/emby-server-rpm_4.7.14.0_x86_64.rpm \
    && dnf clean all

RUN mkdir -p multimedia/{videos,musica,peliculas}

WORKDIR /multimedia

EXPOSE 8096 8920 7359/udp 1900/udp

CMD /opt/emby-server/bin/emby-server