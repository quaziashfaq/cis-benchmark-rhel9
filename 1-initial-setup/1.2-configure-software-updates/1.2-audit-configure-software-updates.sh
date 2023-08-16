#!/usr/bin/env bash


DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

"${DIR}"/1.2.1-audit-ensure-gpg-keys-are-configured-manual.sh
"${DIR}"/1.2.2-audit-ensure-gpgcheck-is-globally-activated.sh
"${DIR}"/1.2.3-audit-ensure-package-manager-repositories-are-configured.sh
