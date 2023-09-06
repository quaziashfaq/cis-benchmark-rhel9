#!/usr/bin/env bash

# 4.1.3.4 Ensure events that modify date and time information are collected (Automated)

#Create audit rules
#Edit or create a file in the /etc/audit/rules.d/ directory, ending in .rules extension, with the relevant rules to monitor events that modify date and time information.
#64 Bit systems

printf " -a always,exit -F arch=b64 -S adjtimex,settimeofday,clock_settime -k time-change -a always,exit -F arch=b32 -S adjtimex,settimeofday,clock_settime -k time-change -w /etc/localtime -p wa -k time-change " >> /etc/audit/rules.d/50-time-change.rules

#Load audit rules
#Merge and load the rules into active configuration:

augenrules --load
#Check if reboot is required.

if [[ $(auditctl -s | grep "enabled") =~ "2" ]]; then printf "Reboot required to load rules\n"; fi