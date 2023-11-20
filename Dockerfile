FROM alpine
RUN apk add --update --no-cache bash tcpdump netcat-openbsd && rm -rf /var/cache/apk/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
