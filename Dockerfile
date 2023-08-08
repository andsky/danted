FROM alpine:latest
COPY /usr/sbin/danted /usr/local/bin/
COPY --chmod=755 entrypoint.sh entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE  1080
CMD ["danted"]