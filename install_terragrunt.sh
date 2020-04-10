#!/bin/bash
# Commit each time when making changes to THIS file !!!
TERRAGRUNT_FILE=terragrunt_linux_amd64
TERRAGRUNT_URL=https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.5
TERRAGRUNT_BIN=terragrunt

function install_terragrunt {
    if [ -z $(which $TERRAGRUNT_BIN) ]
       then
           wget ${TERRAGRUNT_URL}/${TERRAGRUNT_FILE}

           sudo mv ${TERRAGRUNT_FILE} /usr/local/bin/${TERRAGRUNT_BIN}
           chmod +x /usr/local/bin/${TERRAGRUNT_BIN}
           rm -rf ${TERRAGRUNT_FILE}
    else
       echo "Terragrunt is most likely installed"
    fi

}

install_terragrunt


