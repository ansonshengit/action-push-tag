FROM alpine:3.20

RUN apk add --no-cache git \
  && adduser -D -s /bin/sh action

USER action
WORKDIR /github/workspace

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
