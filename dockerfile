# Base Image
FROM alpine:latest

# Install Packages
RUN apk add --no-cache \
    curl \
    bash \
    sudo \
    shadow \
    git \
    gcc \
    g++ \
    musl-dev \
    libffi-dev \
    gmp-dev \
    make

# Install Haskell
RUN curl -sSL https://get.haskellstack.org/ | sh

# Set Environment Variables
ENV PATH="/home/user/.local/bin:${PATH}"
ENV STACK_ROOT="/home/user/.stack"
ENV HOME="/home/user"

# Set Working Directory
WORKDIR /home/user

# Set bash as default shell
CMD ["/bin/bash"]
