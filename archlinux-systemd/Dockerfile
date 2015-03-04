FROM mkaczanowski/archlinux
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com
ENV container docker

RUN pacman -Syu
RUN pacman --noconfirm -S systemd procps; pacman --noconfirm -Scc

RUN systemctl mask dev-mqueue.mount dev-hugepages.mount \
    systemd-remount-fs.service sys-kernel-config.mount \
    sys-kernel-debug.mount sys-fs-fuse-connections.mount
RUN systemctl mask display-manager.service systemd-logind.service
RUN systemctl disable graphical.target; systemctl enable multi-user.target

ADD dbus.service /etc/systemd/system/dbus.service

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

CMD  ["/usr/lib/systemd/systemd"]
