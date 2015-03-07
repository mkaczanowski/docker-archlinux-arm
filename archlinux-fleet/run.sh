#!/bin/bash

CONTAINER=$(docker run -d mkaczanowski/archlinux-fleet)
echo "to enter docker container run: docker exec -t -i ${CONTAINER} /bin/bash"
