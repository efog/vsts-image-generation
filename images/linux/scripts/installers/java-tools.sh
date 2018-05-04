#!/bin/bash
################################################################################
##  File:  java-tools.sh
##  Team:  CI-Platform
##  Desc:  This is an example script that can be copied to add a new software
##         installer to the image
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

apt-get install -y --no-install-recommends ant ant-optional
curl -sL https://services.gradle.org/distributions/gradle-4.6-bin.zip -o gradle-4.6.zip
 && unzip -d /usr/share gradle-4.6.zip \
 && ln -s /usr/share/gradle-4.6/bin/gradle /usr/bin/gradle \
 && rm gradle-4.6.zip
apt-get install -y --no-install-recommends maven

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Ant"
DocumentInstalledItem "Gradle 4.6"
DocumentInstalledItem "Maven"

