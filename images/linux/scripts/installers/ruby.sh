#!/bin/bash
################################################################################
##  File:  ruby.sh
##  Team:  CI-Platform
##  Desc:  Installs Ruby requirements
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install Ruby requirements
apt-get install -y libz-dev openssl libssl-dev

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "libz-dev"
DocumentInstalledItem "openssl"
DocumentInstalledItem "libssl-dev"

