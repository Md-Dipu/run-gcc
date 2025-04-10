# Use a stable Debian slim base image.
FROM debian:stable-slim

# Set noninteractive mode for apt-get.
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install build tools for Debian packaging.
RUN apt-get update && apt-get install -y \
  build-essential \
  devscripts \
  lintian \
  man-db \
  bats && \
  rm -rf /var/lib/apt/lists/*

# Use a generic workspace directory.
WORKDIR /workspace

# The source code will be volume-mounted (see docker-compose) so no COPY here.
# When you run debuild, it uses the debian/ packaging files to create the package.
