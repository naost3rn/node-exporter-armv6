# node-exporter-armv6

## How to use

### Build
```shell-session
$ docker image build -t node-exporter-armv6 -f Dockerfile ./
```

### Run
#### docker-compose
```yaml
version: '3.8'

services:
  node-exporter:
    image: node-exporter-armv6
    ports:
    - 9100:9100
    restart: always
    volumes:
    - /proc:/host/proc
    - /sys:/host/sys
    - /:/rootfs
```
