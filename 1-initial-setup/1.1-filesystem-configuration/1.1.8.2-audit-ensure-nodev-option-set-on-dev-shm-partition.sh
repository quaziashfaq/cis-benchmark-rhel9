#!/usr/bin/env bash

# 1.1.8.2 Ensure nodev option set on /dev/shm partition


source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_nodev_option_set_on_dev_shm_partition() {

    echo -n "1.1.8.2 Ensure nodev option set on /dev/shm partition: "

    if [[ "$(findmnt --kernel /dev/shm | grep nodev | wc -l)" -eq 1 ]]; then
    #if [[ "$(mount | grep -E '\s/dev/shm\s' | grep -v nodev)" == "" ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}


audit_ensure_nodev_option_set_on_dev_shm_partition

