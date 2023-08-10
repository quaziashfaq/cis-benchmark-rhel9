#!/usr/bin/env bash

# 1.1 Filesystem Configuration

# 1.1.1 Disable unused filesystems
./1.1.1.1-audit-ensure-mounting-of-squashfs-filesystems-is-disabled.sh
./1.1.1.2-audit-ensure-mounting-of-udf-filesystems-is-disabled.sh

# 1.1.2 Configure /tmp
./1.1.2.1-audit-ensure-tmp-is-a-separate-partition.sh
./1.1.2.2-audit-ensure-nodev-option-set-on-tmp-partition.sh
./1.1.2.3-audit-ensure-noexec-option-set-on-tmp-partition.sh
./1.1.2.4-audit-ensure-nosuid-option-set-on-tmp-partition.sh


# 1.1.3 Configure /var
./1.1.3.1-audit-ensure-separate-partition-exists-for-var.sh
./1.1.3.2-audit-ensure-nodev-option-set-on-var-partition.sh
./1.1.3.3-audit-ensure-nosuid-option-set-on-var-partition.sh

# 1.1.4 Configure /var/tmp
./1.1.4.1-audit-ensure-separate-partition-exists-for-var-tmp.sh
./1.1.4.2-audit-ensure-noexec-option-set-on-var-tmp-partition.sh
./1.1.4.3-audit-ensure-nosuid-option-set-on-var-tmp-partition.sh
./1.1.4.4-audit-ensure-nodev-option-set-on-var-tmp-partition.sh

# 1.1.5 Configure /var/log
./1.1.5.1-audit-ensure-separate-partition-exists-for-var-log.sh
./1.1.5.2-audit-ensure-nodev-option-set-on-var-log-partition.sh
./1.1.5.3-audit-ensure-noexec-option-set-on-var-log-partition.sh
./1.1.5.4-audit-ensure-nosuid-option-set-on-var-log-partition.sh

# 1.1.6 Configure /var/log/audit
./1.1.6.1-audit-ensure-separate-partition-exists-for-var-log-audit.sh
./1.1.6.2-audit-ensure-noexec-option-set-on-var-log-audit-partition.sh
./1.1.6.3-audit-ensure-nodev-option-set-on-var-log-audit-partition.sh
./1.1.6.4-audit-ensure-nosuid-option-set-on-var-log-audit-partition.sh

# 1.1.7 Configure /home
./1.1.7.1-audit-ensure-separate-partition-exists-for-home.sh
./1.1.7.2-audit-ensure-nodev-option-set-on-home-partition.sh
./1.1.7.3-audit-ensure-nosuid-option-set-on-home-partition.sh

# 1.1.8 Configure /dev/shm

./1.1.8.1-audit-ensure-dev-shm-is-a-separate-partition.sh
./1.1.8.2-audit-ensure-nodev-option-set-on-dev-shm-partition.sh
./1.1.8.3-audit-ensure-noexec-option-set-on-dev-shm-partition.sh
./1.1.8.4-audit-ensure-nosuid-option-set-on-dev-shm-partition.sh

# 1.1.9 Disable USB storage
./1.1.9-audit-disable-usb-storage.sh
