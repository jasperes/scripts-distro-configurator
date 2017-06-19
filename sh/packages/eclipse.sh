#!/bin/bash

function eclipse() {
    OPT_PATH=/opt/eclipse-java

    # curl http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz
    tar -xzvf ide/eclipse-java-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/eclipse $OPT_PATH

    Python scripts/update_eclipse_ini.py $OPT_PATH/eclipse.ini $JDK_BIN
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH ECLIPSE

    _create_run $OPT_PATH "./eclipse" "eclipse"
}

function eclipse_jee() {
    OPT_PATH=/opt/eclipse-jee

    # curl http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
    tar -xzvf ide/eclipse-jee-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/eclipse $OPT_PATH
    
    python scripts/update_eclipse_ini.py $OPT_PATH/eclipse.ini $JDK_BIN
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH ECLIPSE_JEE

    _create_run $OPT_PATH "./eclipse" "eclipse-jee"
}

function eclipse_cpp() {
    OPT_PATH=/opt/eclipse-cpp

    #curl http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-cpp-mars-2-linux-gtk-x86_64.tar.gz
    tar -xzvf ide/eclipse-cpp-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/eclipse $OPT_PATH

    python scripts/update_eclipse_ini.py $OPT_PATH/eclipse.ini $JDK_BIN
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH ECLIPSE_CPP

    _create_run $OPT_PATH "./eclipse" "eclipse-cpp"
}
