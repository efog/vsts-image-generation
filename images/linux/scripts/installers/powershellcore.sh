#!/bin/bash
################################################################################
##  File:  powershellcore.sh
##  Team:  CI-Platform
##  Desc:  This is an example script that can be copied to add a new software
##         installer to the image
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install Powershell Core
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
curl https://packages.microsoft.com/config/ubuntu/$(UBUNTU_VERSION)/prod.list | tee /etc/apt/sources.list.d/microsoft.list \
apt-get install -y --no-install-recommends powershell

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Powershell core"

