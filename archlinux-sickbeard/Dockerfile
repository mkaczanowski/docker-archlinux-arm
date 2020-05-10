FROM mkaczanowski/archlinux-pikaur
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy python2 git --noconfirm

USER build
WORKDIR /build

RUN pikaur -S sickbeard-mcmic python2-cheetah --needed --noconfirm -w

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/python2-*.xz --noconfirm

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/sickbeard*.xz --noconfirm && pacman -Scc --noconfirm

EXPOSE 8081

RUN chmod +x /opt/sickbeard/SickBeard.py && rm -r /home/build

CMD [ "/opt/sickbeard/SickBeard.py" ]
