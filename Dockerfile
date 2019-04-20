FROM docker/compose:1.24.0

RUN apk add --no-cache \
    git

WORKDIR /git
ADD gitops.sh /usr/bin

ENTRYPOINT /usr/bin/gitops.sh
