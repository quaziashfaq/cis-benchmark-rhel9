#!/usr/bin/env bash

# 1.1.8.3 Ensure noexec option set on /dev/shm partition 
# /dev/shm tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel

source ../../utilities.sh

audit_ensure_noexec_option_set_on_dev_shm_partition() {

    echo -n "1.1.8.3 Ensure noexec option set on /dev/shm partition: "

    if [[ "$(findmnt --kernel /dev/shm | grep noexec | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_noexec_option_set_on_dev_shm_partition

