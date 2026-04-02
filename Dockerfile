FROM ubuntu:22.04
RUN apt-get update -qq && apt-get install -y -qq iproute2 2>/dev/null
RUN echo "=== Network interfaces ===" && ip addr
RUN echo "=== Routing table ===" && ip route
RUN echo "=== ARP cache (can we see other pods?) ===" && ip neigh || true
