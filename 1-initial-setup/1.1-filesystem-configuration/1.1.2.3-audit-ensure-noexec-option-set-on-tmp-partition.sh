#!/usr/bin/env bash

# 1.1.2.3 Ensure noexec option set on /tmp partition
# /tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel

source ../../utilities.sh

audit_ensure_noexec_option_set_on_tmp_partition() {
    echo -n "1.1.2.3 Ensure noexec option set on /tmp partition: "

    if [[ "$(findmnt --kernel /tmp | grep noexec | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}

audit_ensure_noexec_option_set_on_tmp_partition
