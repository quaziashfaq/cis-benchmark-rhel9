#!/usr/bin/env bash

# 1.2.2 Ensure gpgcheck is globally activated

audit_ensure_gpgcheck_is_globally_activated()
{
    find /etc/yum.repos.d/ -name "*.repo" \
        -exec echo -n "Backing up: " \; \
        -exec cp -pv {} "{}.bkp.$(date '+%Y%m%dT%H%M')" \; \
        -exec echo "Checking:" {} \; \
        -exec sed -i 's/^gpgcheck\s*=\s*.*/gpgcheck=1/' {} \;

}


audit_ensure_gpgcheck_is_globally_activated
