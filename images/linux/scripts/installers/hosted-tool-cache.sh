#!/bin/bash
################################################################################
##  File:  hosted-tool-cache.sh
##  Team:  CI-Platform
##  Desc:  This is an example script that can be copied to add a new software
##         installer to the image
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Download hosted tool cache
AGENT_TOOLSDIRECTORY=/opt/hostedtoolcache
azcopy --recursive \
       --source https://vstsagenttools.blob.core.windows.net/tools/hostedtoolcache/linux \
       --destination $AGENT_TOOLSDIRECTORY

# Install tools from hosted tool cache
original_directory=$PWD
setups=$(find $AGENT_TOOLSDIRECTORY -name setup.sh)
for setup in $setups; do
	chmod +x $setup;
	cd $(dirname $setup);
	./$(basename $setup);
	cd $original_directory;
done;
