#!/bin/bash

function postman() {
    OPT_PATH=/opt/postman

    if [[ ARCH == 'x86' ]]; then
        POSTMAN_ARCH='32'
    elif [[ ARCH == 'x86_64' ]]; then
        POSTMAN_ARCH='64'
    fi;

    if $(is_to_download postman); then
        download_package "https://dl.pstmn.io/download/latest/linux${POSTMAN_ARCH}"
    fi;

    tar -xzvf $PATH_PACKAGES/Postman-linux-x$POSTMAN_ARCH-$POSTMAN_VERSION.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/Postman $OPT_PATH

    create_run $OPT_PATH "./Postman" "postman"
}
