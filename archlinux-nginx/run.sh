#!/bin/bash

CONTAINER=$(sudo docker run --privileged -d -v /srv/http:/srv/http -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -p 443:443 mkaczanowski/archlinux-nginx)
echo "to enter docker container run: docker exec -t -i ${CONTAINER} /bin/bash"
