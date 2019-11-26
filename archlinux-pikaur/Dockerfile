FROM mkaczanowski/archlinuxarm
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy --noconfirm git pyalpm base-devel

RUN sed -i '/NOPASSWD/s/\#//' /etc/sudoers
RUN useradd -r -g wheel build

WORKDIR /build
RUN mkdir /home/build && chown -R build /build /home/build

USER build

RUN git clone https://aur.archlinux.org/pikaur.git
WORKDIR /build/pikaur

RUN makepkg -sr --noconfirm

USER root
RUN pacman -U pikaur-*.xz --noconfirm && pacman -Scc --noconfirm && rm -r /build/*

CMD ["/usr/bin/pikaur"]
