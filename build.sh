#!/bin/bash
set -e

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 {deb|arch}"
  exit 1
fi

TARGET=$1

if [ "$TARGET" = "deb" ]; then
  echo "Building Debian package using debuild..."
  docker compose run --rm debian-builder
elif [ "$TARGET" = "arch" ]; then
  echo "Building Arch package using makepkg..."
  docker compose run --rm arch-builder
else
  echo "Unknown target: $TARGET"
  echo "Usage: $0 {deb|arch}"
  exit 1
fi
