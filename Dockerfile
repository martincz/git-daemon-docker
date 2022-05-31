FROM alpine:latest

RUN apk add git-daemon && \
    mkdir -p /srv/git

WORKDIR /srv

CMD ["/usr/libexec/git-core/git-daemon", "--export-all", "--base-path=/srv/git", "--verbose", "--informative-errors",  "--listen=0.0.0.0", "--port=9418", "/srv/git"]
