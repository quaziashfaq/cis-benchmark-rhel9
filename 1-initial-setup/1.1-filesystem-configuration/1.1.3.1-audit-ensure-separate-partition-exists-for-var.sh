#!/usr/bin/env bash


# 1.1.3.1 Ensure separate partition exists for /var

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_var_is_a_separate_partition() {

    echo -n "1.1.3.1 Ensure /var is a separate partition: "
    if [[ "$(findmnt --kernel /var | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi

}


audit_ensure_var_is_a_separate_partition

