#!/usr/bin/env bash 

# 1.3.1 Ensure AIDE is installed

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

remediate_ensure_gpgcheck_is_globally_activated()
{
    echo -n "1.3.1 Ensure AIDE is installed: "
    yum -y install aide
    aide --init
    mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
}


remediate_ensure_gpgcheck_is_globally_activated
 
