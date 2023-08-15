#!/usr/bin/env bash 

# 1.3.1 Ensure AIDE is installed

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_gpgcheck_is_globally_activated()
{
    echo -n "1.3.1 Ensure AIDE is installed: "
    rpm -q aide > /dev/null 2>&1
    return_code=$?

    if [[ "$return_code" -ne 0 ]]; then
        test_failed "Fail"
        exit 1
    else
        test_passed "Pass"
        exit 0
    fi
}


audit_ensure_gpgcheck_is_globally_activated
 
