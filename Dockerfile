FROM alpine:3.18
RUN apk --no-cache add postgresql13-client=13.11-r1
ENTRYPOINT [ "psql" ]
