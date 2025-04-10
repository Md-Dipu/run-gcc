FROM archlinux:latest

# Update Arch and install required packages (base-devel, git, etc.)
RUN pacman -Syu --noconfirm && \
  pacman -S --noconfirm base-devel bats git man-db && \
  # Create a non-root user for building since makepkg cannot run as root.
  useradd -m builder && \
  echo "builder ALL=(ALL) NOPASSWD: ALL" >>/etc/sudoers

# Switch to the newly created builder user.
USER builder

# Set the workspace directory.
WORKDIR /workspace

# The PKGBUILD and related packaging files in pkg/arch are expected to be in the project.
# Volume mounting (via docker-compose) makes this accessible.
