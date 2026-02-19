FROM debian:trixie AS builder

# Install the essentials
RUN apt-get update
RUN apt-get install -y build-essential cmake git curl wget

# Copy our scripts
COPY ./scripts /scripts

# Install stuff
RUN /scripts/install-n64-toolchain.sh
RUN /scripts/install-n64-sysroot.sh
RUN /scripts/install-node.sh

# Cleanup
RUN rm -rf /scripts && apt-get clean

# Make a single-layer image

FROM debian:trixie
COPY --from=builder / /
