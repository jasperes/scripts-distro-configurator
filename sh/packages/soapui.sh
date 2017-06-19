#!/bin/bash

function soapui() {
    OPT_PATH=/opt/soapui

    # curl https://b537910400b7ceac4df0-22e92613740a7dd1247910134033c0d1.ssl.cf5.rackcdn.com/soapui/5.3.0/SoapUI-5.3.0-linux-bin.tar.gz
    tar -xzvf ide/SoapUI-$SOAPUI_VERSION-linux-bin.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/SoapUI-$SOAPUI_VERSION $OPT_PATH
    
    chmod +x $OPT_PATH/bin/soapui.sh
    _create_run $OPT_PATH "./bin/soapui.sh" "soapui"
}
