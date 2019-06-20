FROM alpine

RUN apk add --no-cache dnsmasq
RUN mkdir /dnsmasq
RUN mkdir /dnsmasq.d
COPY dnsmasq.conf /dnsmasq/dnsmasq.conf
RUN touch /dnsmasq/hosts

EXPOSE 53

CMD dnsmasq --conf-file=/dnsmasq/dnsmasq.conf --no-daemon
