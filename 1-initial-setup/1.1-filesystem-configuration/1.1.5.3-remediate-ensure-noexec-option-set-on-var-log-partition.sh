#!/usr/bin/env bash


# 1.1.5.3 Ensure noexec option set on /var/log partition

remediate_ensure_noexec_option_set_on_var_log_partition() {

cat <<USAGE

1.1.5.3 Ensure noexec option set on /var/log partition
Edit the /etc/fstab file and add noexec to the fourth field (mounting options) for the /var/log partition.
Example: <device> /var/log <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /var/log with the configured options:
# mount -o remount /var/log

USAGE

}

remediate_ensure_noexec_option_set_on_var_log_partition

