#!/bin/bash
CONTAINER=$(sudo docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro mkaczanowski/systemd /usr/lib/systemd/systemd)
echo ${CONTAINER}
echo "to enter docker container run: docker exec -t -i ${CONTAINER} /bin/bash"
