#!/usr/bin/env bash

#4.1.2.1 Ensure audit log storage size is configured (Automated)
#Audit:
#Run the following command and ensure output is in compliance with site policy:
# grep -w "^\s*max_log_file\s*=" /etc/audit/auditd.conf 
# max_log_file = <MB>
#Remediation:
#Set the following parameter in /etc/audit/auditd.conf in accordance with site policy:

max_log_file = <MB>