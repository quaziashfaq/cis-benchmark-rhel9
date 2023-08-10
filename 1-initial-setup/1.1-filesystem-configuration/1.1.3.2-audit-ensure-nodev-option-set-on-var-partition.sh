#!/usr/bin/env bash


# 1.1.3.2 Ensure nodev option set on /var partition 
# /var /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel

source ../../utilities.sh

audit_ensure_nodev_option_set_on_var_partition() {
    echo -n "1.1.3.2 Ensure nodev option set on /var partition: "

    if [[ "$(findmnt --kernel /var | grep nodev | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_nodev_option_set_on_var_partition
