#!/usr/bin/env bash

# 1.1.6.1 Ensure separate partition exists for /var/log/audit

# TARGET SOURCE FSTYPE OPTIONS
# /var/log/audit /dev/sdb ext4 rw,relatime,seclabel,data=ordered



source ../../utilities.sh

audit_ensure_var_log_audit_is_a_separate_partition() {

    echo -n "1.1.6.1 Ensure separate partition exists for /var/log/audit: "

    if [[ "$(findmnt --kernel /var/log/audit | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi

}


audit_ensure_var_log_audit_is_a_separate_partition
