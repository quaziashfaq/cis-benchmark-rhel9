#!/usr/bin/env bash

# 1.1.7.1 Ensure separate partition exists for /home 

remediate_ensure_home_is_a_separate_partition() {
 
cat << USAGE

1.1.7.1 Ensure separate partition exists for /home 
For new installations, during installation create a custom partition setup and specify a separate partition for /home.
For systems that were previously installed, create a new partition and configure /etc/fstab as appropriate.

USAGE

}

remediate_ensure_home_is_a_separate_partition

