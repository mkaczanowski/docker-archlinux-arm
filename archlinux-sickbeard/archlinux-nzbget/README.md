# archlinux-nzbget
Simple nzbget container based on Archlinux ARM image

# running
```
sudo docker run \
    --rm \
    # --priviledged if running on x86, otherwise not needed
    --privileged \
    -it \
    -e PUID=1000 \
    -e PGID=1000 \
    -v /host/path/nzbget.conf:/etc/nzbget.conf:ro \
    -v /host/path/scripts:/usr/share/nzbget/scripts:ro \
    -p 6789:6789 \
    mkaczanowski/archlinux-nzbget
```
