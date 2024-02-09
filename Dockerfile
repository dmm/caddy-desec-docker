
FROM caddy:2.7.6-builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/desec

FROM caddy:2.7.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
