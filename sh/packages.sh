#!/bin/bash

function jdk {
    sudo tar -xzvf java/jdk-$JDK7_VERSION-linux-i586.tar.gz -C $JAVA_PATH
    sudo tar -xzvf java/jdk-$JDK8_VERSION-linux-i586.tar.gz -C $JAVA_PATH
}

function eclipse_cpp {
    OPT_PATH=/opt/eclipse-cpp

    tar -xzvf ide/eclipse-cpp-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/eclipse $OPT_PATH

    python scripts/update_eclipse_ini.py $OPT_PATH/eclipse.ini $JDK_BIN
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH ECLIPSE_CPP

    _create_run $OPT_PATH "./eclipse" "eclipse-cpp"
}

function eclipse_jee {
    OPT_PATH=/opt/eclipse-jee

    tar -xzvf ide/eclipse-jee-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/eclipse $OPT_PATH
    
    python scripts/update_eclipse_ini.py $OPT_PATH/eclipse.ini $JDK_BIN
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH ECLIPSE_JEE

    _create_run $OPT_PATH "./eclipse" "eclipse-jee"
}

function eclipse {
    OPT_PATH=/opt/eclipse-java

    tar -xzvf ide/eclipse-java-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/eclipse $OPT_PATH

    Python scripts/update_eclipse_ini.py $OPT_PATH/eclipse.ini $JDK_BIN
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH ECLIPSE

    _create_run $OPT_PATH "./eclipse" "eclipse"
}

function sqldeveloper {
    OPT_PATH=/opt/sqldeveloper

    unzip sqldeveloper/sqldeveloper-$SQLDEVELOPER_VERSION-no-jre.zip -d $TMP_PATH
    sudo mv $TMP_PATH/sqldeveloper $OPT_PATH

    cp sqldeveloper/libs/jtds-$JDTS_VERSION.jar $OPT_PATH/jdbc/lib/
    cp sqldeveloper/libs/mysql-connector-java-$MYSQL_JDBC_VERSION-bin.jar $OPT_PATH/jdbc/lib/

    python scripts/update_sqldeveloper_jdk.py $OPT_PATH/sqldeveloper/bin/sqldeveloper.conf $JDK_PATH
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH SQLDEVELOPER

    _create_run $OPT_PATH "./sqldeveloper.sh" "sqldeveloper"
}

function soapui {
    OPT_PATH=/opt/soapui

    tar -xzvf ide/SoapUI-$SOAPUI_VERSION-linux-bin.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/SoapUI-$SOAPUI_VERSION $OPT_PATH
    
    chmod +x $OPT_PATH/bin/soapui.sh
    _create_run $OPT_PATH "./bin/soapui.sh" "soapui"
}

function postman {
    OPT_PATH=/opt/postman

    tar -xzvf ide/Postman-linux-x32-$POSTMAN_VERSION.tar.gz -C $TMP_PATH
    sudo mv $TMP_PATH/Postman $OPT_PATH

    _create_run $OPT_PATH "./Postman" "postman"
}

function oh_my_zsh {
    # TODO configurar shell padrão zsh
    suro aptitude -y install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function spf13_vim {
    sudo aptitude -y install vim-athena
    sh <(curl https://j.mp/spf13-vim3 -L)
}

### private functions ###
funcion _create_run {
    touch $1/run.sh
    
    echo "#\!/bin/bash" >> $1/run.sh
    echo cd $1 >> $1/run.sh
    echo $2 >> $1/run.sh

    chmod +x $1/run.sh
    sudo link $1/run.sh /usr/bin/$3
}
