#!/usr/bin/env bash

echo ""
echo "-------------------------------------------------------------------------------"
echo "Update your package manager GPG keys in accordance with site policy."
echo "-------------------------------------------------------------------------------"


#sed -i 's/^gpgcheck\s*=\s*.*/gpgcheck=1/' /etc/dnf/dnf.conf



#find /etc/yum.repos.d/ -name "*.repo" -exec echo "Checking:" {} \; -exec sed -i 's/^gpgcheck\s*=\s*.*/gpgcheck=1/' {} \;


find /etc/yum.repos.d/ -name "*.repo" \
        -exec echo -n "Backing up: " \; \
        -exec cp -pv {} "{}.bkp.$(date '+%Y%m%dT%H%M')" \; \
        -exec echo "Checking:" {} \; \
        -exec sed -i 's/^gpgcheck\s*=\s*.*/gpgcheck=1/' {} \;
