#!/usr/bin/env bash
 
 #4.1.1.2 Ensure auditing for processes that start prior to auditd is enabled (Automated)
 
 grubby --update-kernel ALL --args 'audit=1'