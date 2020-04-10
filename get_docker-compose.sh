#!/bin/bash
# Commit each time when making changes to THIS file !!!
VERSION=$1
FILE=docker-compose-Linux-x86_64
URL=https://github.com/docker/compose/releases/download/$VERSION
BIN=docker-compose

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
