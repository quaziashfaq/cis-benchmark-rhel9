#!/usr/bin/env bash

# 1.1.5.3 Ensure noexec option set on /var/log partition
# /var/log /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel


source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_noexec_option_set_on_var_log_partition() {

    echo -n "1.1.5.3 Ensure noexec option set on /var/log partition: "

    if [[ "$(findmnt --kernel /var/log | grep noexec | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_noexec_option_set_on_var_log_partition

