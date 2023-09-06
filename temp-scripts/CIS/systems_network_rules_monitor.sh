

#4.1.3.5 Ensure events that modify the system's network environment are collected (Automated)

#!/usr/bin/env bash

#4.1.3.5 Ensure events that modify the system's network environment are collected (Automated)

#Create audit rules
#Edit or create a file in the /etc/audit/rules.d/ directory, ending in .rules extension, with the relevant rules to monitor events that modify the system's network environment.
#64 Bit systems
#Example:

printf " -a always,exit -F arch=b64 -S sethostname,setdomainname -k system-locale 
		 -a always,exit -F arch=b32 -S sethostname,setdomainname -k system-locale 
		 -w /etc/issue -p wa -k system-locale 
		 -w /etc/issue.net -p wa -k system-locale 
		 -w /etc/hosts -p wa -k system-locale 
		 -w /etc/sysconfig/network -p wa -k system-locale 
		 -w /etc/sysconfig/network-scripts/ -p wa -k system-locale 
		 " >> /etc/audit/rules.d/50-system_local.rules
		 
#Load audit rules
#Merge and load the rules into active configuration:
augenrules --load
Check if reboot is required.
if [[ $(auditctl -s | grep "enabled") =~ "2" ]]; then printf "Reboot required to load rules\n"; fi