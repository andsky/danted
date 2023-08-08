FROM debian:bookworm AS build


RUN apt update && apt install -y dante-server

FROM alpine:latest
COPY --from=build /usr/sbin/danted /usr/local/bin/
COPY --chmod=755 entrypoint.sh entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE  1080
CMD ["danted"]