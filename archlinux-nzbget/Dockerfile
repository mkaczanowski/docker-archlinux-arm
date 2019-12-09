FROM mkaczanowski/archlinux-pikaur
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy --noconfirm python-click python-beautifulsoup4 python-dogpile.cache python-stevedore python-pysrt python-dateutil python-setuptools python2-setuptools python-sphinx python-docutils nzbget curl p7zip python2 unrar wget && pacman -Scc --noconfirm

USER build
WORKDIR /build

RUN pikaur -S python-babelfish python-rebulk --needed --noconfirm -w

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/python-*.xz --noconfirm

USER build
RUN pikaur -S python-rarfile  python-guessit  python-enzyme --needed --noconfirm -w

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/python-*.xz --noconfirm

USER build
RUN pikaur -S subliminal --needed --noconfirm -w

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/subliminal*.xz --noconfirm && pacman -Scc --noconfirm

RUN rm -r /home/build

EXPOSE 6789

STOPSIGNAL SIGTERM

CMD ["/usr/bin/nzbget", "-s", "-o", "outputmode=log", "-c", "/etc/nzbget.conf"]
