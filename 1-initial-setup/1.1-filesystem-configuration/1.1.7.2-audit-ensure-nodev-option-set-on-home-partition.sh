#!/usr/bin/env bash

# 1.1.7.2 Ensure nodev option set on /home partition
# /home /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel


source ../../utilities.sh

audit_ensure_nodev_option_set_on_home_partition() {

    echo -n "1.1.7.2 Ensure nodev option set on /home partition: "

    if [[ "$(findmnt --kernel /home | grep nodev | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}


audit_ensure_nodev_option_set_on_home_partition

