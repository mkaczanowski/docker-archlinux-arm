FROM mkaczanowski/pikaur-archlinux
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy python2 python2-cheetah git --noconfirm

USER build
WORKDIR /build

RUN pikaur -S sickbeard-mcmic --needed --noconfirm -w

USER root
RUN pacman -U /home/build/.cache/pikaur/pkg/sickbeard*.xz --noconfirm && pacman -Scc --noconfirm

ENV SB_CONF /etc/sickbeard/config.ini
ENV SB_DATA /var/lib/sickbeard

EXPOSE 8081

RUN chmod +x /opt/sickbeard/SickBeard.py && rm -r /home/build

CMD [ \
    "/opt/sickbeard/SickBeard.py", \
    "--nolaunch", \
    "--quiet", \
    "--config", "$SB_CONF", \
    "--datadir", "$SB_DATA" \
]
