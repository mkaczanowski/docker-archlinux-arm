FROM mkaczanowski/pikaur-archlinux
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy python2 python2-cheetah git --noconfirm && pacman -Scc --noconfirm

USER build
WORKDIR /build

RUN pikaur -S sickbeard-mcmic --needed --noconfirm -w

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/sickbeard*.xz --noconfirm

CMD ["/opt/sickbeard"]
