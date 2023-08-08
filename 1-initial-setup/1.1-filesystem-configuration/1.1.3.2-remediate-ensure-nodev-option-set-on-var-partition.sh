#!/usr/bin/env bash

# 1.1.3.2 Ensure nodev option set on /var partition 

remediate_ensure_nodev_option_set_on_var_partition() {

cat <<USAGE

1.1.3.2 Ensure nodev option set on /var partition 
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /var partition.
Example: <device> /var <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /var with the configured options:
mount -o remount /var

USAGE

}

remediate_ensure_nodev_option_set_on_var_partition
