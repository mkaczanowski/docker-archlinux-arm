#!/bin/bash

CONTAINER=$(docker run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro mkaczanowski/archlinux-fleet)
echo "to enter docker container run: docker exec -t -i ${CONTAINER} /bin/bash"
