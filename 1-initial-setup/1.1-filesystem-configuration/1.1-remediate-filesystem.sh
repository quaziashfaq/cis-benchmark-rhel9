#!/usr/bin/env bash

# 1.1 Filesystem Configuration

# 1.1.1 Disable unused filesystems
sudo ./1.1.1.1-remediate-ensure-mounting-of-squashfs-filesystems-is-disabled.sh
sudo ./1.1.1.2-remediate-ensure-mounting-of-udf-filesystems-is-disabled.sh

# 1.1.2 Configure /tmp
# 1.1.3 Configure /var
# 1.1.4 Configure /var/tmp
# 1.1.5 Configure /var/log
# 1.1.6 Configure /var/log/audit
# 1.1.7 Configure /home
# 1.1.8 Configure /dev/shm

