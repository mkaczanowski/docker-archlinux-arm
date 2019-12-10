FROM mkaczanowski/archlinuxarm
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy --noconfirm transmission-cli sudo && pacman -Scc --noconfirm

EXPOSE 9091
EXPOSE 51413
EXPOSE 51413/udp

STOPSIGNAL SIGTERM

CMD ["/usr/bin/transmission-daemon", "-g", "/config", "-c", "/watch", "-f"]
