#!/usr/bin/env bash

# 1.2.1 Ensure GPG keys are configured (Manual)


# List all GPG key URLs
echo "Listing all GPG key URLs..."
grep -r gpgkey /etc/yum.repos.d/* /etc/dnf/dnf.conf
echo "-------------------------------------------------------------------------------"
echo ""

# List installed GPG Keys
for RPM_PACKAGE in $(rpm -q gpg-pubkey); do
	echo "RPM: ${RPM_PACKAGE}"
	RPM_SUMMARY=$(rpm -q --queryformat "%{SUMMARY}" "${RPM_PACKAGE}") 
	RPM_PACKAGER=$(rpm -q --queryformat "%{PACKAGER}" "${RPM_PACKAGE}")
	RPM_DATE=$(date +%Y-%m-%d -d "1970-1-1+$((0x$(rpm -q --queryformat "%{RELEASE}" "${RPM_PACKAGE}") ))sec")
	RPM_KEY_ID=$(rpm -q --queryformat "%{VERSION}" "${RPM_PACKAGE}")

	echo "Packager: ${RPM_PACKAGER}
			Summary: ${RPM_SUMMARY}
			Creation date: ${RPM_DATE}
			Key ID: ${RPM_KEY_ID}"
done
echo "-------------------------------------------------------------------------------"
echo ""

# Query locally available GPG keys
# Repositories that store their respective GPG keys on disk should do so in 
# /etc/pki/rpm-gpg/. These keys are available for immediate import either when dnf is 
# asked to install a relevant package from the repository or when an administrator imports 
# the key directly with the rpm --import command.
# To find where these keys come from run:
for PACKAGE in $(find /etc/pki/rpm-gpg/ -type f -exec rpm -qf {} \; | sort -u); 
do 
	rpm -q --queryformat "%{NAME}-%{VERSION} %{PACKAGER} %{SUMMARY}\\n" "${PACKAGE}"; 
done
