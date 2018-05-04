#!/bin/bash
################################################################################
##  File:  azcopy.sh
##  Team:  CI-Platform
##  Desc:  Installs AzCopy
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install repository configuration
 curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > ./microsoft-prod.list
 sudo cp ./microsoft-prod.list /etc/apt/sources.list.d/

 # Install Microsoft GPG public key
 curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
 sudo cp ./microsoft.gpg /etc/apt/trusted.gpg.d/

# Install AzCopy (depends on .NET Core)
apt-get install -y --no-install-recommends azcopy

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "AzCopy"

