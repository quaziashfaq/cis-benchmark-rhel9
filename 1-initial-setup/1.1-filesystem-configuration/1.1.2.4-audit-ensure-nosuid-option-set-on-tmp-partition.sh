#!/usr/bin/env bash

# 1.1.2.4 Ensure nosuid option set on /tmp partition
# /tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel

source ../../utilities.sh

audit_ensure_nosuid_option_set_on_tmp_partition() {
    echo -n "1.1.2.4 Ensure nosuid option set on /tmp partition: "

    if [[ "$(findmnt --kernel /tmp | grep nosuid | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}

audit_ensure_nosuid_option_set_on_tmp_partition

