#!/usr/bin/env bash

# 1.1.8.4 Ensure nosuid option set on /dev/shm partition
# /dev/shm tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel


source ../../utilities.sh

audit_ensure_nosuid_option_set_on_dev_shm_partition() {

    echo -n "1.1.8.4 Ensure nosuid option set on /dev/shm partition: "

    if [[ "$(findmnt --kernel /dev/shm | grep nosuid | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_nosuid_option_set_on_dev_shm_partition
