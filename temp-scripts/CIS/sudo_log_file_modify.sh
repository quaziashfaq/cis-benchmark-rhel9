#!/usr/bin/env bash

#4.1.3.3 Ensure events that modify the sudo log file are collected (Automated)

#Remediation:
#Edit or create a file in the /etc/audit/rules.d/ directory, ending in .rules extension, with the relevant rules to monitor events that modify the sudo log file. 
#Example:

{ SUDO_LOG_FILE=$(grep -r logfile /etc/sudoers* | sed -e 's/.*logfile=//;s/,? .*//' -e 's/"//g') [ -n "${SUDO_LOG_FILE}" ] && printf " -w ${SUDO_LOG_FILE} -p wa -k sudo_log_file " >> /etc/audit/rules.d/50-sudo.rules || printf "ERROR: Variable 'SUDO_LOG_FILE_ESCAPED' is unset.\n" }

#Merge and load the rules into active configuration:
augenrules --load

#Check if reboot is required.
if [[ $(auditctl -s | grep "enabled") =~ "2" ]]; then printf "Reboot required to load rules\n"; fi