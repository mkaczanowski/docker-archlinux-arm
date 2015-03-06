FROM mkaczanowski/archlinux
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

RUN sed -e '/NoExtract/ s/^#*/#/' -i /etc/pacman.conf
RUN pacman -Sy; pacman --noconfirm -S tar gcc glibc linux-api-headers
ENV GOLANG_VERSION 1.3.3
RUN curl -sSL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz \
		| tar -v -C /usr/src -xz

RUN cd /usr/src/go/src && ./make.bash --no-clean 2>&1
ENV PATH /usr/src/go/bin:$PATH

RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go

RUN  sed -i '/^#.* NoExtract /s/^#//' /etc/pacman.conf
RUN  rm -r /usr/share/locale/* /usr/share/man/* /usr/include/*
RUN  pacman -R tar; pacman -Scc
COPY go-wrapper /usr/local/bin/
