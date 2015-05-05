FROM mkaczanowski/archlinux-systemd
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

RUN sed -e '/NoExtract/ s/^#*/#/' -i /etc/pacman.conf
RUN pacman -Sy; pacman --noconfirm -S tar gcc glibc linux-api-headers
ENV GOLANG_VERSION 1.4.1
RUN curl -sSL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz \
		| tar -v -C /usr/src -xz

RUN cd /usr/src/go/src && ./make.bash --no-clean 2>&1
ENV PATH /usr/src/go/bin:$PATH

RUN  sed -i '/^#.* NoExtract /s/^#//' /etc/pacman.conf
RUN  rm -r /usr/share/locale/* /usr/share/man/*
RUN  pacman -R tar gcc; pacman -Scc
COPY go-wrapper /usr/local/bin/

CMD ["/usr/lib/systemd/systemd"]
