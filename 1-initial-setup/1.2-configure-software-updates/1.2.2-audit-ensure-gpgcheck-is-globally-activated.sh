#!/usr/bin/env bash 

# 1.2.2 Ensure gpgcheck is globally activated

source "../../utilities.sh"

audit_ensure_gpgcheck_is_globally_activated()
{

    linecount=$(grep -P "^gpgcheck\h*=\h*[^1].*\h*$" /etc/yum.repos.d/* | wc -l)

    echo "1.2.2 Ensure gpgcheck is globally activated"

    if [[ "$linecount" -eq 0 ]]; then
        test_failed "Fail"
        exit 1
    fi
 
    test_passed "Pass"
    exit 0
}


audit_ensure_gpgcheck_is_globally_activated
 
