FROM mkaczanowski/archlinuxarm
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy --noconfirm nzbget curl p7zip python2 unrar wget && pacman -Scc --noconfirm

EXPOSE 6789

STOPSIGNAL SIGTERM

CMD ["/usr/bin/nzbget", "-s", "-o", "outputmode=log", "-c", "/etc/nzbget.conf"]
