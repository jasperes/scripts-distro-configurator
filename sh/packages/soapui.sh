#!/bin/bash

function soapui() {
    OPT_PATH=/opt/soapui

    if $(is_to_download soapui); then
        download_package "https://b537910400b7ceac4df0-22e92613740a7dd1247910134033c0d1.ssl.cf5.rackcdn.com/soapui/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz"
    fi;

    tar -xzvf $PATH_PACKAGES/SoapUI-$SOAPUI_VERSION-linux-bin.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/SoapUI-$SOAPUI_VERSION $OPT_PATH

    chmod +x $OPT_PATH/bin/soapui.sh
    create_run $OPT_PATH "./bin/soapui.sh" "soapui"
}
