#!/usr/bin/env bash

# 1.1.4.1 Ensure separate partition exists for /var/tmp

# TARGET SOURCE FSTYPE OPTIONS
# /var/tmp /dev/sdb ext4 rw,relatime,seclabel,data=ordere


source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_var_tmp_is_a_separate_partition() {

    echo -n "1.1.4.1 Ensure separate partition exists for /var/tmp: "

    if [[ "$(findmnt --kernel /var/tmp | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi

}


audit_ensure_var_tmp_is_a_separate_partition
