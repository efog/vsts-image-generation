#!/bin/bash
################################################################################
##  File:  nodejs.sh
##  Team:  CI-Platform
##  Desc:  This is an example script that can be copied to add a new software
##         installer to the image
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install LTS Node.js and related build tools
curl -sL https://git.io/n-install | bash -s -- -ny - \
 && ~/n/bin/n lts \
 && npm install -g bower grunt gulp n \
 && rm -rf ~/n

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Node.js"
DocumentInstalledItem "Bower"
DocumentInstalledItem "Grunt"
DocumentInstalledItem "Gulp"

