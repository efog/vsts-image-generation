#!/bin/bash
################################################################################
##  File:  subversion.sh
##  Team:  CI-Platform
##  Desc:  This is an example script that can be copied to add a new software
##         installer to the image
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install Subversion
apt-get install -y --no-install-recommends subversion

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "subversion"

