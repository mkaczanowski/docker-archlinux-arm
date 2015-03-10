FROM mkaczanowski/archlinux-systemd
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

RUN pacman -Syu --noconfirm nginx; systemctl enable nginx
RUN pacman -Scc --noconfirm; 
RUN mkdir -p /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/sites-enabled
ADD ./config/nginx.service /etc/systemd/system/multi-user.target.wants/nginx.service
ADD ./config/nginx.conf /etc/nginx/nginx.conf
ADD ./config/00-default.conf /etc/nginx/sites-enabled/00-default.conf

ONBUILD RUN rm /etc/nginx/sites-enabled/00-default.conf
ONBUILD ADD ./sites/*.conf /etc/nginx/sites-enabled/

VOLUME ["/srv/http/"]

EXPOSE 80
EXPOSE 443

CMD ["/usr/lib/systemd/systemd"]
