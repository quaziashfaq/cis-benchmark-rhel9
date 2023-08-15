#!/usr/bin/env bash

# 1.2.3 Ensure package manager repositories are configured

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit_ensure_package_manager_repositories_are_configured()
{
    echo "1.2.3 Ensure package manager repositories are configured: "
    dnf repolist
}


audit_ensure_package_manager_repositories_are_configured
 
