#!/usr/bin/env bash

# 1.1.2.2 Ensure nodev option set on /tmp partition
# /tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_nodev_option_set_on_tmp_partition() {
    echo -n "1.1.2.2 Ensure nodev option set on /tmp partition: "

    if [[ "$(findmnt --kernel /tmp | grep nodev | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_nodev_option_set_on_tmp_partition
