FROM alpine:3.15

RUN apk --no-cache add dnsmasq

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]
