FROM alpine:latest
MAINTAINER vincent.gu <0x6c34@gmail.com>

RUN apk --update add bind

EXPOSE 53/udp 53/tcp

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]