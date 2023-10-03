#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "dfx command existence" command -v dfx

# Report result
reportResults
