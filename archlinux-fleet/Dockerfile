FROM mkaczanowski/archlinux-golang
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

ENV FLEET_VERSION 0.9.1
RUN curl -sSL https://github.com/coreos/fleet/archive/v$FLEET_VERSION.tar.gz \
		| tar -v -C /usr/src -xz

RUN cd /usr/src/fleet-$FLEET_VERSION && ./build 2>&1
RUN ln -s /usr/src/fleet-$FLEET_VERSION/bin/* /usr/bin
