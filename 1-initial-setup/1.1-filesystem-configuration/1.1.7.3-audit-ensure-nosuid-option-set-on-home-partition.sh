#!/usr/bin/env bash

# 1.1.7.3 Ensure nosuid option set on /home partition
# /home /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_nosuid_option_set_on_home_partition() {

    echo -n "1.1.7.3 Ensure nosuid option set on /home partition: "

    if [[ "$(findmnt --kernel /home | grep nosuid | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_nosuid_option_set_on_home_partition

