# archlinux-nginx
Simple nginx container based on Archlinux ARM image

# running
```
sudo docker run \
    --rm \
    # --priviledged if running on x86, otherwise not needed
    --privileged \
    -it \
    -v /host/path/etc:/etc/nginx \
    -v /host/path/static:/srv/http \
    -p 80:80 \
    mkaczanowski/archlinux-nginx
```
