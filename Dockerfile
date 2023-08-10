FROM alpine:3.18.3@d30f7f87f85b3d2690bd4404d7f63ef4be084b0a41e4387fc4b9294a85cb834bfa06d11c63b2e07e3e29cb1da2ab39a8318ad49916153fb62db6d13abb59dff8
RUN apk update && \
    apk --no-cache add postgresql13-client=13.11-r0 && \
    rm -rf /var/cache/apk/*
ENTRYPOINT [ "psql" ]
