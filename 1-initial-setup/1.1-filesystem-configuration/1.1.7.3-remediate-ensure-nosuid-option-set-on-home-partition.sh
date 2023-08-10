#!/usr/bin/env bash

1.1.7.3 Ensure nosuid option set on /home partition


remediate_ensure_nosuid_option_set_on_home_partition() {

cat <<USAGE

1.1.7.3 Ensure nosuid option set on /home partition
Edit the /etc/fstab file and add nosuid to the fourth field (mounting options) for the /home partition.
Example: <device> /home <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /home with the configured options:
# mount -o remount /home

USAGE

}

remediate_ensure_nosuid_option_set_on_home_partition() {

