#!/usr/bin/env bash 

# 1.3.3 Ensure cryptographic mechanisms are used to protect the integrity of audit tools

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh


audit-ensure-cryptographic-mechanisms-protect-integrity-of-audit-tools()
{
    echo "--------------------------------------------------------------------------------"
    echo "1.3.3 Ensure cryptographic mechanisms are used to protect the integrity of audit tools: "
    echo "Check  if the output is as below:
    /sbin/auditctl p+i+n+u+g+s+b+acl+xattrs+sha512 
    /sbin/auditd p+i+n+u+g+s+b+acl+xattrs+sha512 
    /sbin/ausearch p+i+n+u+g+s+b+acl+xattrs+sha512 
    /sbin/aureport p+i+n+u+g+s+b+acl+xattrs+sha512 
    /sbin/autrace p+i+n+u+g+s+b+acl+xattrs+sha512 
    /sbin/augenrules p+i+n+u+g+s+b+acl+xattrs+sha512"
    echo "--------------------------------------------------------------------------------"
    echo "Output: "
    grep -Ps -- '(\/sbin\/(audit|au)\H*\b)' /etc/aide.conf.d/*.conf /etc/aide.conf
    echo "--------------------------------------------------------------------------------"
    echo ""

}


audit-ensure-cryptographic-mechanisms-protect-integrity-of-audit-tools
