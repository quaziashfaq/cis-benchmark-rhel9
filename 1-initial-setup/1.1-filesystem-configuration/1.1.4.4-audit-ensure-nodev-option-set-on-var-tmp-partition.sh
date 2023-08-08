#!/usr/bin/env bash


# 1.1.4.4 Ensure nodev option set on /var/tmp partition (Automated)
# /var/tmp /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel

source ../../utilities.sh

audit_ensure_nodev_option_set_on_var_tmp_partition() {
    echo -n "1.1.4.4 Ensure nodev option set on /var/tmp partition: "

    if [[ "$(findmnt --kernel /var/tmp | grep nodev | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}

audit_ensure_nodev_option_set_on_var_tmp_partition
