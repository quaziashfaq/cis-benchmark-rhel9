#!/usr/bin/env bash 

# 1.3.3 Ensure cryptographic mechanisms are used to protect the integrity of audit tools

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh


remediate-ensure-cryptographic-mechanisms-protect-integrity-of-audit-tools()
{
    echo "1.3.3 Ensure cryptographic mechanisms are used to protect the integrity of audit tools: "
    echo "# Audit Tools"   >> /etc/aide.conf
    echo "/sbin/auditctl p+i+n+u+g+s+b+acl+xattrs+sha512"   >> /etc/aide.conf
    echo "/sbin/auditd p+i+n+u+g+s+b+acl+xattrs+sha512"     >> /etc/aide.conf
    echo "/sbin/ausearch p+i+n+u+g+s+b+acl+xattrs+sha512"   >> /etc/aide.conf
    echo "/sbin/aureport p+i+n+u+g+s+b+acl+xattrs+sha512"   >> /etc/aide.conf 
    echo "/sbin/autrace p+i+n+u+g+s+b+acl+xattrs+sha512"    >> /etc/aide.conf 
    echo "/sbin/augenrules p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf

}


remediate-ensure-cryptographic-mechanisms-protect-integrity-of-audit-tools
