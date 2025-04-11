# Installation, Update, and Uninstallation Guide

This document provides step-by-step instructions for installing, updating, and uninstalling the software using the `.deb` and `.pkg.tar.zst` packages provided in the release.

## Prerequisites

- Ensure you have `sudo` privileges on your system.
- Download the appropriate package (`.deb` for Debian-based systems or `.pkg.tar.zst` for Arch-based systems) from the [GitHub Releases](https://github.com/Md-Dipu/run-gcc/releases).

## Installation

### For Debian-based Systems (Ubuntu, Debian, etc.)

1. Open a terminal.
2. Navigate to the directory where the `.deb` file is downloaded.
3. Run the following command to install the package:
   ```bash
   sudo dpkg -i run-gcc_1.0.0_amd64.deb
   ```
4. If there are missing dependencies, fix them by running:
   ```bash
   sudo apt-get install -f
   ```

### For Arch-based Systems (Arch, Manjaro, etc.)

1. Open a terminal.
2. Navigate to the directory where the `.pkg.tar.zst` file is downloaded.
3. Run the following command to install the package:
   ```bash
   sudo pacman -U run-gcc-1.0.0-2-any.pkg.tar.zst
   ```

## Update

### For Debian-based Systems

1. Download the latest `.deb` package from the release.
2. Install it using the same steps as in the installation section. The new version will replace the old one.

### For Arch-based Systems

1. Download the latest `.pkg.tar.zst` package from the release.
2. Install it using the same steps as in the installation section. The new version will replace the old one.

## Uninstallation

### For Debian-based Systems

1. Open a terminal.
2. Run the following command to remove the package:
   ```bash
   sudo apt-get remove run-gcc
   ```

### For Arch-based Systems

1. Open a terminal.
2. Run the following command to remove the package:
   ```bash
   sudo pacman -R run-gcc
   ```

## Troubleshooting

- If you encounter issues during installation, ensure all dependencies are installed.
- For Debian-based systems, use `sudo apt-get install -f` to fix broken dependencies.
- For Arch-based systems, ensure your `pacman` database is up-to-date:
  ```bash
  sudo pacman -Syu
  ```

For further assistance, please refer to the [GitHub Issues](https://github.com/Md-Dipu/run-gcc/issues) page or contact support.
