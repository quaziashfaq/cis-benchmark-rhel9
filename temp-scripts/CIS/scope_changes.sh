#!/usr/bin/env bash

# 4.1.3.1 Ensure changes to system administration scope (sudoers) is collected (Automated)

#Edit or create a file in the /etc/audit/rules.d/ directory, ending in .rules extension, with the relevant rules to monitor scope changes for system administrators. 
#Example:

printf " -w /etc/sudoers -p wa -k scope -w /etc/sudoers.d -p wa -k scope " >> /etc/audit/rules.d/50-scope.rules

#Merge and load the rules into active configuration:

augenrules --load

#Check if reboot is required.

if [[ $(auditctl -s | grep "enabled") =~ "2" ]]; then printf "Reboot required to load rules\n"; fi