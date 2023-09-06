#!/usr/bin/env bash

# 1.1.3.3 Ensure nosuid option set on /var partition

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_nosuid_option_set_on_var_partition() {

    echo -n "1.1.3.3 Ensure nosuid option set on /var partition: "

    if [[ "$(findmnt --kernel /var | grep nosuid | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi
}

audit_ensure_nosuid_option_set_on_var_partition

