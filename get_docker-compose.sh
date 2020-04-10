#!/bin/bash
# Commit each time when making changes to THIS file !!!
FILE=terragrunt_linux_amd64
URL=https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.5
BIN=terragrunt

function install {
    if [ -z "$(which $BIN)" ]
       then
           wget ${URL}/${FILE}

           sudo mv ${FILE} /usr/local/bin/${BIN}
           chmod +x /usr/local/bin/${BIN}
           rm -rf ${FILE}
    else
       echo "${BIN} is most likely installed"
    fi

}

install
