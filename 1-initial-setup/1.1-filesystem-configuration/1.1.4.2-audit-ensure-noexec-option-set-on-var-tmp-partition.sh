#!/usr/bin/env bash

# 1.1.4.2 Ensure noexec option set on /var/tmp partition
# /var/tmp /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel


source ../../utilities.sh

audit_ensure_noexec_option_set_on_var_tmp_partition() {

    echo -n "1.1.4.2 Ensure noexec option set on /var/tmp partition: "

    if [[ "$(findmnt --kernel /var/tmp | grep noexec | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}

audit_ensure_noexec_option_set_on_var_tmp_partition
