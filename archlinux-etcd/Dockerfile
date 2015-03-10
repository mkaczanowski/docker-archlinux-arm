FROM mkaczanowski/archlinux-golang
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

ENV ETCDI_VERSION 2.0.4
RUN pacman --noconfirm -S patch
RUN curl -sSL -k https://github.com/coreos/etcd/archive/v$ETCDI_VERSION.tar.gz \
		| tar --touch -v -C /usr/src -xz

COPY patches/* /usr/src/etcd-$ETCDI_VERSION/
COPY config/* /etc/systemd/system/
RUN cd /usr/src/etcd-$ETCDI_VERSION && patch etcdserver/server.go < server.go.patch
RUN cd /usr/src/etcd-$ETCDI_VERSION && patch etcdserver/raft.go < raft.go.patch
RUN cd /usr/src/etcd-$ETCDI_VERSION && patch store/watcher_hub.go < watcher_hub.go.patch 
RUN cd /usr/src/etcd-$ETCDI_VERSION && ./build 2>&1  

RUN systemctl enable etcd.service
RUN ln -s /usr/src/etcd-$ETCDI_VERSION/bin/etcd /usr/bin/

RUN pacman --noconfirm -R patch; pacman -Scc
EXPOSE 4001 7001 2379 2380
CMD ["/usr/lib/systemd/systemd"]
