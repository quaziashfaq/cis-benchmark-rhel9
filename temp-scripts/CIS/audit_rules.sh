#!/usr/bin/env bash

#4.1.3.2 Ensure actions as another user are always logged (Automated)

#Create audit rules

#Edit or create a file in the /etc/audit/rules.d/ directory, ending in .rules extension, with the relevant rules to monitor elevated privileges.
#64 Bit systems
#Example:

printf " -a always,exit -F arch=b64 -C euid!=uid -F auid!=unset -S execve -k user_emulation -a always,exit -F arch=b32 -C euid!=uid -F auid!=unset -S execve -k user_emulation " >> /etc/audit/rules.d/50-user_emulation.rules

#Load audit rules

#Merge and load the rules into active configuration:

augenrules --load

#Check if reboot is required.

if [[ $(auditctl -s | grep "enabled") =~ "2" ]]; then printf "Reboot required to load rules\n"; fi