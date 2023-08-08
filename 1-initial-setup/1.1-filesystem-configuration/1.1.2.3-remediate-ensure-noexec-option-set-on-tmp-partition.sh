#!/usr/bin/env bash

# 1.1.2.3 Ensure noexec option set on /tmp partition


remediate_ensure_noexec_option_set_on_tmp_partition() {

cat <<USAGE

1.1.2.3 Ensure noexec option set on /tmp partition
Edit the /etc/fstab file and add noexec to the fourth field (mounting options) for the /tmp partition.
Example: <device> /tmp <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /tmp with the configured options:
# mount -o remount /tmp

USAGE

}

remediate_ensure_noexec_option_set_on_tmp_partition
