#!/usr/bin/env bash

# 1.1.8.3 Ensure noexec option set on /dev/shm partition 
# /dev/shm tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel

source ../../utilities.sh

audit_ensure_noexec_option_set_on_dev_shm_partition() {

    echo -n "1.1.8.3 Ensure noexec option set on /dev/shm partition: "

    if [[ "$(findmnt --kernel /dev/shm | grep noexec | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}

audit_ensure_noexec_option_set_on_dev_shm_partition

