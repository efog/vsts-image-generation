#!/bin/bash
################################################################################
##  File:  mysql.sh
##  Team:  CI-Platform
##  Desc:  Installs MySQL Client
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install MySQL Client
apt-get install mysql-client -y

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "MySQL"

