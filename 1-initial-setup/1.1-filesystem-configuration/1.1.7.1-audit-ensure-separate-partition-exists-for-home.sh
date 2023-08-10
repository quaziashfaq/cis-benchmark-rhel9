#!/usr/bin/env bash

# 1.1.7.1 Ensure separate partition exists for /home 
# TARGET SOURCE FSTYPE OPTIONS
# /home /dev/sdb ext4 rw,relatime,seclabel


source ../../utilities.sh

audit_ensure_home_is_a_separate_partition() {

    echo -n "1.1.7.1 Ensure separate partition exists for /home: "

    if [[ "$(findmnt --kernel /home | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail"
        exit 1
    fi

}


audit_ensure_home_is_a_separate_partition

