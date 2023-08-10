#!/usr/bin/env bash


# 1.1.8.3 Ensure noexec option set on /dev/shm partition 

remediate_ensure_noexec_option_set_on_dev_shm_partition() {

cat <<USAGE

1.1.8.3 Ensure noexec option set on /dev/shm partition 
Edit the /etc/fstab file and add noexec to the fourth field (mounting options) for the /dev/shm partition.
Example: <device> /dev/shm <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /dev/shm with the configured options:
# mount -o remount /dev/shm

USAGE

}

remediate_ensure_noexec_option_set_on_dev_shm_partition

