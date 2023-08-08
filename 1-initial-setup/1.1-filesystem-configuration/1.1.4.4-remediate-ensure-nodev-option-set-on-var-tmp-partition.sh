#!/usr/bin/env bash


# 1.1.4.4 Ensure nodev option set on /var/tmp partition

remediate_ensure_nodev_option_set_on_var_tmp_partition() {

cat <<USAGE

1.1.4.4 Ensure nodev option set on /var/tmp partition
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /var/tmp partition.
Example: <device> /var/tmp <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /var/tmp with the configured options:
# mount -o remount /var/tmp

USAGE

}

remediate_ensure_nodev_option_set_on_var_tmp_partition
