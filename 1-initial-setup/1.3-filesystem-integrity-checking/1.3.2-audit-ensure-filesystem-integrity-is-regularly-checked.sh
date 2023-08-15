#!/usr/bin/env bash 

# 1.3.2 Ensure filesystem integrity is regularly checked

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_filesystem_integrity_is_regularly_checked()
{
    echo -n "1.3.2 Ensure filesystem integrity is regularly checked: "

    # 1st method of checking if aide service is running in the system
    grep -Ers '^([^#]+\s+)?(\/usr\/s?bin\/|^\s*)aide(\.wrapper)?\s(--?\S+\s)*(--(check|update)|\$AIDEARGS)\b' \
            /etc/cron.* /etc/crontab /var/spool/cron/ > /dev/null 2>&1
    return_code=$?

    if [[ "${return_code}" -eq 0 ]]; then
        test_passed "Pass"
        exit 0
    else
        test_failed "Fail: There is no cronjob for aide"
        exit 1
    fi

# End of 1st method of checknig aide service running status. If it failed, then we will check the next stage.
# Check it in the next method

#    systemctl is-enabled aidecheck.service > /dev/null 2>&1
#    return_code=$?
#    if [[ "$return_code" -ne 0 ]]; then
#        test_failed "Failed: aidecheck.service is not enabled"
#        exit 1
#    fi

#    systemctl is-enabled aidecheck.timer > /dev/null 2>&1
#    return_code=$?
#    if [[ "$return_code" -ne 0 ]]; then
#        test_failed "Failed: aidecheck.timer is not enabled"
#        exit 1
#    fi

#    systemctl status aidecheck.timer | grep running > /dev/null 2>&1
#    return_code=$?
#    if [[ "$return_code" -ne 0 ]]; then
#        test_failed "Failed: aidecheck.timer is not running"
#        exit 1
#    fi


#    test_passed "Pass"

}


audit_ensure_filesystem_integrity_is_regularly_checked
 
