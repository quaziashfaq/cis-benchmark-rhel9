#!/usr/bin/env bash


# 1.1.7.2 Ensure nodev option set on /home partition

remediate_ensure_nodev_option_set_on_home_partition() {

cat <<USAGE

1.1.7.2 Ensure nodev option set on /home partition
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /home partition.
Example: <device> /home <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /home with the configured options:
# mount -o remount /home

USAGE

}


remediate_ensure_nodev_option_set_on_home_partition

