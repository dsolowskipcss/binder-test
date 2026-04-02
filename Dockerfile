FROM ubuntu:22.04
RUN echo "=== PID namespace ===" && ls /proc/ | head -20
RUN echo "=== Can we see host processes? ===" && cat /proc/1/cmdline && echo "" || echo "PID1_HIDDEN"
RUN echo "=== Host mounts ===" && cat /proc/1/mounts 2>/dev/null && echo "MOUNTS_VISIBLE" || echo "MOUNTS_HIDDEN"
