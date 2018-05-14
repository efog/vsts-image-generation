#!/bin/bash
################################################################################
##  File:  repos.sh
##  Team:  CI-Platform
##  Desc:  Installs official Microsoft package repos for the distribution
################################################################################

LSB_RELEASE=$(lsb_release -rs)

# Install repository configuration
# if [ -f /etc/apt/sources.list.d/microsoft-prod.list ]; then
#     echo "Installing Microsoft package repo for Ubuntu $LSB_RELEASE"
#     curl https://packages.microsoft.com/config/ubuntu/$LSB_RELEASE/prod.list > microsoft-prod.list
#     cp ./microsoft-prod.list /etc/apt/sources.list.d/
#     apt-get update
# else
#     echo "Microsoft package repo for Ubuntu $LSB_RELEASE already installed. Skipping."
# fi

# # Install Microsoft GPG public key
# if [ -f /etc/apt/trusted.gpg.d/microsoft.gpg ]; then
#     echo "Installing Microsoft gpg key."
#     curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#     cp ./microsoft.gpg /etc/apt/trusted.gpg.d/
# else
#     echo "Microsoft Microsoft gpg key already installed. Skipping."
# fi

wget https://packages.microsoft.com/config/ubuntu/$LSB_RELEASE/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get update

curl -L https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
