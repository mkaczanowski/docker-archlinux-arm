#!/bin/bash

mkdir -p /var/lib/mysql
chown 89:89 -R /var/lib/mysql

docker run -v /var/lib/mysql:/var/lib/mysql blackikeeagle/archlinux-percona /opt/create-mysql-structure.sh
