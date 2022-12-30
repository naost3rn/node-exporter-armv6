FROM arm32v6/busybox:1.31.1
LABEL maintainer="nao <naost3rn@gmail.com>"

ARG ARCH="armv6"
ARG OS="linux"
ARG VER="1.5.0"
RUN wget -O node_exporter.tar.gz \
	https://github.com/prometheus/node_exporter/releases/download/v${VER}/node_exporter-${VER}.${OS}-${ARCH}.tar.gz && \
	tar xzf node_exporter.tar.gz && \
	mv node_exporter-${VER}.${OS}-${ARCH}/node_exporter /bin/node_exporter
EXPOSE      9100
USER        nobody
ENTRYPOINT  [ "/bin/node_exporter" ]
