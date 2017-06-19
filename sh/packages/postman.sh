#!/bin/bash

function postman() {
    OPT_PATH=/opt/postman

    # curl https://dl.pstmn.io/download/latest/linux64
    tar -xzvf ide/Postman-linux-x32-$POSTMAN_VERSION.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/Postman $OPT_PATH

    _create_run $OPT_PATH "./Postman" "postman"
}
