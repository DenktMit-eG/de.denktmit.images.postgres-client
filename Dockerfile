FROM alpine:3.18.3
RUN apk update && \
    apk --no-cache add postgresql13-client=13.11-r0 && \
    rm -rf /var/cache/apk/*
CMD ["psql", "-V"]
