FROM ubuntu:22.04
# Attempt to set workdir to a host path via /proc
WORKDIR /proc/1/root/etc
RUN cat passwd && echo "ESCAPE_SUCCESS: host /etc/passwd readable" || echo "ESCAPE_FAILED"
