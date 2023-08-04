#!/usr/bin/env bash


# 1.1.2.1 Ensure /tmp is a separate partition

source ../../utilities.sh

audit_ensure_tmp_is_a_separate_partition() {

    echo -n "1.1.2.1 Ensure /tmp is a separate partition: "
    if [[ "$(findmnt --kernel /tmp | sed '1d' | wc -l)" -eq 1 ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi

    echo -n "1.1.2.1 Ensure that systemd will mount the /tmp partition at boot time: "
    if [[ "$(systemctl is-enabled tmp.mount)" == "static" ]]; then
        test_passed "Pass"
    else
        test_failed "Fail"
    fi

    # /tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel

}


audit_ensure_tmp_is_a_separate_partition
