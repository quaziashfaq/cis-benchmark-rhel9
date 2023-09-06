#!/usr/bin/env bash

#4.1.2.2 Ensure audit logs are not automatically deleted (Automated)

# Audit:
# Run the following command and verify output matches:
# grep max_log_file_action /etc/audit/auditd.conf 
# max_log_file_action = keep_logs
# Remediation:
# Set the following parameter in /etc/audit/auditd.conf:

max_log_file_action = keep_logs