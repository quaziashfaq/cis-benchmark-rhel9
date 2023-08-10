#!/usr/bin/env bash

# 1.1.8.2 Ensure nodev option set on /dev/shm partition

remediate_ensure_nodev_option_set_on_dev_shm_partition() {

cat <<USAGE

1.1.8.2 Ensure nodev option set on /dev/shm partition
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /dev/shm partition.
Run the following command to remount /dev/shm using the updated options from /etc/fstab:
# mount -o remount /dev/shm

USAGE

}


remediate_ensure_nodev_option_set_on_dev_shm_partition() {

