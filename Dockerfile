FROM alpine

RUN apk update && apk add texlive-full

WORKDIR /data
VOLUME ["/data"]
