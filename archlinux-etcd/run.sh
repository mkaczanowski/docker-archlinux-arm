#!/bin/bash

CONTAINER=$(docker run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 4001:4001 -p 7001:7001 -p 2379:2379 -p 2380:2380 mkaczanowski/archlinux-etcd)
echo "to enter docker container run: docker exec -t -i ${CONTAINER} /bin/bash"
