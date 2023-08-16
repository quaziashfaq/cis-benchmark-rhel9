#!/usr/bin/env bash


DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

"${DIR}"/1.2.1-remediate-ensure-gpg-keys-are-configured-manual.sh
"${DIR}"/1.2.2-remediate-ensure-gpgcheck-is-globally-activated.sh
"${DIR}"/1.2.3-remediate-ensure-package-manager-repositories-are-configured.sh
