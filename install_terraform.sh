#!/bin/bash
# Commit each time when making changes to THIS file !!!
TERRAFORM_ZIP_FILE=terraform_0.12.24_linux_amd64.zip
TERRAFORM=https://releases.hashicorp.com/terraform/0.12.24
TERRAFORM_BIN=terraform

function install_terraform {
    if [ -z $(which $TERRAFORM_BIN) ]
       then
           wget ${TERRAFORM}/${TERRAFORM_ZIP_FILE}
           unzip ${TERRAFORM_ZIP_FILE}
           sudo mv ${TERRAFORM_BIN} /usr/local/bin/${TERRAFORM_BIN}
           rm -rf ${TERRAFORM_ZIP_FILE}
    else
       echo "Terraform is most likely installed"
    fi

}

install_terraform
terraform -install-autocomplete