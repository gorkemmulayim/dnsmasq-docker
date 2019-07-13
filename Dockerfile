FROM alpine

RUN apk add --no-cache dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD dnsmasq --no-daemon
