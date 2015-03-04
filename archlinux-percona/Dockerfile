FROM mkaczanowski/archlinux-systemd
MAINTAINER Mateusz Kaczanowski, kaczanowski.mateusz@gmail.com

RUN pacman -Syu --noconfirm percona-server
RUN pacman -Scc --noconfirm
#RUN rm /etc/mysql/my.cnf
#ADD ./my.cnf /etc/mysql/my.cnf
ADD ./create-mysql-structure.sh /opt/create-mysql-structure.sh
RUN chmod +x /opt/create-mysql-structure.sh
RUN /opt/create-mysql-structure.sh

EXPOSE 3306

VOLUME ["/etc/mysql", "/var/lib/mysql"]

USER mysql

CMD ["/usr/bin/mysqld_safe", "--pid-file=/run/mysqld/mysqld.pid", "--bind-address=0.0.0.0", "--skip-name-resolve", "--datadir=/var/lib/mysql"]
