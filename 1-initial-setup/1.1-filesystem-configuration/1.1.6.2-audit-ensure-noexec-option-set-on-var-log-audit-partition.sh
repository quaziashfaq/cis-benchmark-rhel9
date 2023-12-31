#!/usr/bin/env bash

# 1.1.6.2 Ensure noexec option set on /var/log/audit partition 
# /var/log/audit /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_noexec_option_set_on_var_log_audit_partition() {

    echo -n "1.1.6.2 Ensure noexec option set on /var/log/audit partition: "

    if [[ "$(findmnt --kernel /var/log/audit | grep noexec | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_noexec_option_set_on_var_log_audit_partition

