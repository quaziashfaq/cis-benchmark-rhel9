#!/usr/bin/env bash

# 1.1.3.1 Ensure separate partition exists for /var

remediate_ensure_separate_partition_exists_for_var() {

cat <<USAGE

1.1.3.1 Ensure separate partition exists for /var
For new installations, during installation create a custom partition setup and specify a separate partition for /var.
For systems that were previously installed, create a new partition and configure /etc/fstab as appropriate.

USAGE

}

remediate_ensure_separate_partition_exists_for_var
