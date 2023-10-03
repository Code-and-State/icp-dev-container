#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "ubuntu-version" [ "$(lsb_release -rs)" = "22.04" ]
check "dfx command existence" command -v dfx

# Report result
reportResults
