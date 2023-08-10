FROM alpine:3.18
RUN apk update && \
    apk --no-cache add postgresql13-client=13.11-r1 && \
    rm -rf /var/cache/apk/*
ENTRYPOINT [ "psql" ]
