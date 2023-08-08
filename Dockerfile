FROM alpine:latest AS build

RUN apk add dante-server

FROM alpine:latest
COPY --from=build /usr/sbin/sockd /usr/local/bin/
COPY --chmod=755 entrypoint.sh entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE  1080
CMD ["sockd"]