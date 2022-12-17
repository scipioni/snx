#!/bin/bash

VPN=$1

mkdir -p ./setup
if [ ! s    -f setup/snx_install.sh ]; then
    echo "downloading snx_install.sh"
    curl -k --fail --silent --output "setup/snx_install.sh" "https://${VPN}/SNX/INSTALL/snx_install.sh"
fi

if [ ! -f setup/cshell_install.sh ]; then
    echo "downloading cshell_install.sh"
    curl -k --fail --silent --output "setup/cshell_install.sh" "https://${VPN}/SNX/INSTALL/cshell_install.sh"
fi
