#!/usr/bin/env bash

DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

"${DIR}"/1.3.1-remediate-ensure-aide-is-installed.sh
"${DIR}"/1.3.2-remediate-ensure-filesystem-integrity-is-regularly-checked.sh
"${DIR}"/1.3.3-remediate-ensure-cryptographic-mechanisms-protect-integrity-of-audit-tools.sh

