#!/usr/bin/env bash

# 1.1.2.1 Ensure /tmp is a separate partition
remediate_ensure_tmp_is_a_separate_partition() {
    systemctl unmask tmp.mount

cat <<USAGE

1.1.2.1 Ensure /tmp is a separate partition: 
First ensure that systemd is correctly configured to ensure that /tmp will be mounted at boot time.
For specific configuration requirements of the /tmp mount for your environment, modify /etc/fstab.
Example of using tmpfs with specific mount options:
tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime,size=NG 0 

USAGE
}

remediate_ensure_tmp_is_a_separate_partition

