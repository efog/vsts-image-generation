#!/bin/bash
################################################################################
##  File:  waagent.sh
##  Team:  CI-Platform
##  Desc:  Installs latest Azure/WALinuxAgent
################################################################################

apt-get install -y python-setuptools

git clone https://github.com/Azure/WALinuxAgent.git

cd WALinuxAgent

python setup.py install --force

service walinuxagent restart
