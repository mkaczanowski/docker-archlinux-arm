FROM mkaczanowski/archlinux-systemd
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

RUN pacman -Syu --noconfirm apache openssl libxml2
RUN pacman -Scc --noconfirm
RUN mkdir -p /etc/httpd/conf/sites-enabled
RUN mkdir -p /run/httpd
ADD ./config/httpd.conf /etc/httpd/conf/httpd.conf
ADD ./config/00-default.conf /etc/httpd/conf/sites-enabled/00-default.conf
RUN mkdir /srv/http/default
ADD ./default/index.html /srv/http/default/index.html

ONBUILD RUN rm /etc/httpd/conf/sites-enabled/00-default.conf
ONBUILD ADD ./sites/*.conf /etc/httpd/conf/sites-enabled/

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
