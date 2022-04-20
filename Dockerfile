FROM alpine:3.15.4

RUN apk --no-cache add git bash

RUN rm -rf /var/lib/apt/lists/*

RUN  apk update
RUN apk add git


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
