#!/usr/bin/env bash

# 1.1.5.1 Ensure separate partition exists for /var/log

# TARGET SOURCE FSTYPE OPTIONS
# /var/log /dev/sdb ext4 rw,relatime,seclabel,data=ordered


source ../../utilities.sh

audit_ensure_var_log_is_a_separate_partition() {

    echo -n "1.1.5.1 Ensure separate partition exists for /var/log: "

    if [[ "$(findmnt --kernel /var/log | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi

}


audit_ensure_var_log_is_a_separate_partition

