#!/usr/bin/env bash


DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

# Run this scritp with sudo or as root
sudo "${DIR}"/1.3.1-audit-ensure-aide-is-installed.sh
sudo "${DIR}"/1.3.2-audit-ensure-filesystem-integrity-is-regularly-checked.sh
"${DIR}"/1.3.3-audit-ensure-cryptographic-mechanisms-protect-integrity-of-audit-tools.sh

