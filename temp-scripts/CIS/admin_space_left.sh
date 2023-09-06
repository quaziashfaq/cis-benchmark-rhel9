#!/usr/bin/env bash

#4.1.2.3 Ensure system is disabled when audit logs are full (Automated)

# Audit:
# Run the following commands and verify output matches:
##grep space_left_action /etc/audit/auditd.conf 
	# space_left_action = email
##grep action_mail_acct /etc/audit/auditd.conf 
	# action_mail_acct = root
# Run the following command and verify the output is either halt or single:
##grep -E 'admin_space_left_action\s*=\s*(halt|single)' /etc/audit/auditd.conf 
	# admin_space_left_action = <halt|single>

# Remediation:
# Set the following parameters in /etc/audit/auditd.conf:
	space_left_action = email 
	action_mail_acct = root
# set admin_space_left_action to either halt or single in /etc/audit/auditd.conf. 
#Example:
	admin_space_left_action = halt