#!/usr/bin/env bash

#4.1.1.3 Ensure audit_backlog_limit is sufficient (Automated)
# Run the following command to add audit_backlog_limit=<BACKLOG SIZE> to GRUB_CMDLINE_LINUX

grubby --update-kernel ALL --args 'audit_backlog_limit=8192'