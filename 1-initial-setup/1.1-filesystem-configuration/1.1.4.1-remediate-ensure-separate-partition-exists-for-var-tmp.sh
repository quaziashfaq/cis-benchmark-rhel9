#!/usr/bin/env bash


# 1.1.4.1 Ensure separate partition exists for /var/tmp

remediate_ensure_var_tmp_is_a_separate_partition() {
 
cat << USAGE
1.1.4.1 Ensure separate partition exists for /var/tmp
For new installations, during installation create a custom partition setup and specify a separate partition for /var/tmp.
For systems that were previously installed, create a new partition and configure /etc/fstab as appropriate.

USAGE

}

remediate_ensure_var_tmp_is_a_separate_partition
