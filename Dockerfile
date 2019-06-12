FROM alpine

RUN apk --no-cache add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53

CMD dnsmasq --no-daemon
