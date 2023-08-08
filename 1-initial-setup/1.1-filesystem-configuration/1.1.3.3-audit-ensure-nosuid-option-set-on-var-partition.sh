#!/usr/bin/env bash

# 1.1.3.3 Ensure nosuid option set on /var partition

source ../../utilities.sh

audit_ensure_nosuid_option_set_on_var_partition() {

    echo -n "1.1.3.3 Ensure nosuid option set on /var partition: "

    if [[ "$(findmnt --kernel /var | grep nosuid | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi
}

audit_ensure_nosuid_option_set_on_var_partition

