#!/usr/bin/env bash

# 1.1.8.1 Ensure /dev/shm is a separate partition 
# TARGET SOURCE FSTYPE OPTIONS
# /dev/shm tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel


source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_dev_shm_is_a_separate_partition() {

    echo -n "1.1.8.1 Ensure /dev/shm is a separate partition: "

    if [[ "$(findmnt --kernel /dev/shm | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi

}


audit_ensure_dev_shm_is_a_separate_partition

