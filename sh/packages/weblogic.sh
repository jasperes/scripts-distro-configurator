#!/bin/bash

function weblogic() {
    # TODO completar 
    # unzip
    mkdir $TMP/weblogic
    mv $TMP/wls12130 $TMP/weblogic
    sudo mv $TMP/weblogic /opt/
    export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80
    export MW_HOME=/opt/weblogic/wls12130
    cd $MW_HOME
    . ./configure.sh
    . $MW_HOME/wlserver/server/bin/setWLSEnv.sh
    mkdir /opt/weblogic/domains
    mkdir /opt/weblogic/domains/public
    $MW_HOME/wlserver/common/bin/config.sh
}
