#!/usr/bin/env bash

# 1.1.4.3 Ensure nosuid option set on /var/tmp partition


source ../../utilities.sh

audit_ensure_nosuid_option_set_on_var_tmp_partition() {

    echo -n "1.1.4.3 Ensure nosuid option set on /var/tmp partition"

    if [[ "$(findmnt --kernel /var/tmp | grep nosuid | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}


audit_ensure_nosuid_option_set_on_var_tmp_partition
