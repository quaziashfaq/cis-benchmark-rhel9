#!/usr/bin/env bash

# 1.1.6.4 Ensure nosuid option set on /var/log/audit partition


remediate_ensure_nosuid_option_set_on_var_log_audit_partition() {

cat <<USAGE

1.1.6.4 Ensure nosuid option set on /var/log/audit partition
Edit the /etc/fstab file and add nosuid to the fourth field (mounting options) for the /var/log/audit partition.
Example: <device> /var/log/audit <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /var/log/audit with the configured options:
# mount -o remount /var/log/audit

USAGE

}

remediate_ensure_nosuid_option_set_on_var_log_audit_partition

