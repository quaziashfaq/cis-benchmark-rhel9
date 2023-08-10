#!/usr/bin/env bash

# 1.1.8.1 Ensure /dev/shm is a separate partition 

remediate_ensure_dev_shm_is_a_separate_partition() {
 
cat << USAGE

1.1.8.1 Ensure /dev/shm is a separate partition 
For specific configuration requirements of the /dev/shm mount for your environment, modify /etc/fstab.
Example of using tmpfs with specific mount options: tmpfs /dev/shm tmpfs defaults,rw,nosuid,nodev,noexec,relatime,size=2G 0 0

USAGE

}

remediate_ensure_dev_shm_is_a_separate_partition

