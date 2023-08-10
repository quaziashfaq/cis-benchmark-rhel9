#!/usr/bin/env bash

# 1.1 Filesystem Configuration

# 1.1.1 Disable unused filesystems
sudo ./1.1.1.1-remediate-ensure-mounting-of-squashfs-filesystems-is-disabled.sh
sudo ./1.1.1.2-remediate-ensure-mounting-of-udf-filesystems-is-disabled.sh

# 1.1.2 Configure /tmp
sudo ./1.1.2.1-remediate-ensure-tmp-is-a-separate-partition.sh
sudo ./1.1.2.2-remediate-ensure-nodev-option-set-on-tmp-partition.sh
sudo ./1.1.2.3-remediate-ensure-noexec-option-set-on-tmp-partition.sh
sudo ./1.1.2.4-remediate-ensure-nosuid-option-set-on-tmp-partition.sh

# 1.1.3 Configure /var
sudo ./1.1.3.1-remediate-ensure-separate-partition-exists-for-var.sh
sudo ./1.1.3.2-remediate-ensure-nodev-option-set-on-var-partition.sh
sudo ./1.1.3.3-remediate-ensure-nosuid-option-set-on-var-partition.sh

# 1.1.4 Configure /var/tmp
sudo ./1.1.4.1-remediate-ensure-separate-partition-exists-for-var-tmp.sh
sudo ./1.1.4.2-remediate-ensure-noexec-option-set-on-var-tmp-partition.sh
sudo ./1.1.4.3-remediate-ensure-nosuid-option-set-on-var-tmp-partition.sh
sudo ./1.1.4.4-remediate-ensure-nodev-option-set-on-var-tmp-partition.sh

# 1.1.5 Configure /var/log
sudo ./1.1.5.1-remediate-ensure-separate-partition-exists-for-var-log.sh
sudo ./1.1.5.2-remediate-ensure-nodev-option-set-on-var-log-partition.sh
sudo ./1.1.5.3-remediate-ensure-noexec-option-set-on-var-log-partition.sh
sudo ./1.1.5.4-remediate-ensure-nosuid-option-set-on-var-log-partition.sh

# 1.1.6 Configure /var/log/audit
sudo ./1.1.6.1-remediate-ensure-separate-partition-exists-for-var-log-audit.sh
sudo ./1.1.6.2-remediate-ensure-noexec-option-set-on-var-log-audit-partition.sh
sudo ./1.1.6.3-remediate-ensure-nodev-option-set-on-var-log-audit-partition.sh
sudo ./1.1.6.4-remediate-ensure-nosuid-option-set-on-var-log-audit-partition.sh

# 1.1.7 Configure /home
sudo ./1.1.7.1-remediate-ensure-separate-partition-exists-for-home.sh
sudo ./1.1.7.2-remediate-ensure-nodev-option-set-on-home-partition.sh
sudo ./1.1.7.3-remediate-ensure-nosuid-option-set-on-home-partition.sh

# 1.1.8 Configure /dev/shm
sudo ./1.1.8.1-remediate-ensure-dev-shm-is-a-separate-partition.sh
sudo ./1.1.8.2-remediate-ensure-nodev-option-set-on-dev-shm-partition.sh
sudo ./1.1.8.3-remediate-ensure-noexec-option-set-on-dev-shm-partition.sh
sudo ./1.1.8.4-remediate-ensure-nosuid-option-set-on-dev-shm-partition.sh

# 1.1.9 Disable USB storage
sudo ./1.1.9-remediate-disable-usb-storage.sh
