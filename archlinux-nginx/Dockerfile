FROM mkaczanowski/archlinuxarm
MAINTAINER Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>

RUN pacman -Sy --noconfirm nginx && pacman -Scc --noconfirm

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

RUN chown http:http -R /var/lib/nginx

EXPOSE 80

STOPSIGNAL SIGTERM

USER http

CMD ["nginx", "-g", "daemon off;"]
