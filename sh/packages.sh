#!/bin/bash

function jdk {
    sudo tar -xzvf java/jdk-$JDK7_VERSION-linux-i586.tar.gz -C $JAVA_PATH
    sudo tar -xzvf java/jdk-$JDK8_VERSION-linux-i586.tar.gz -C $JAVA_PATH
}

function eclipse_cpp {
    tar -xzvf ide/eclipse-cpp-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-cpp
    python scripts/update_eclipse_ini.py /opt/eclipse-cpp/eclipse.ini $JDK_BIN

}

function eclipse_jee {
    tar -xzvf ide/eclipse-jee-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-jee
    python scripts/update_eclipse_ini.py /opt/eclipse-jee/eclipse.ini $JDK_BIN
}

function eclipse {
    tar -xzvf ide/eclipse-java-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $TMP_PATH
    sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-java
    Python scripts/update_eclipse_ini.py /opt/eclipse-java/eclipse.ini $JDK_BIN
}

function sqldeveloper {
    unzip sqldeveloper/sqldeveloper-$SQLDEVELOPER_VERSION-no-jre.zip -d $TMP_PATH
    sudo mv $EXTRACT_PATH/sqldeveloper /opt/sqldeveloper
    cp sqldeveloper/libs/jtds-$JDTS_VERSION.jar /opt/sqldeveloper/jdbc/lib/
    cp sqldeveloper/libs/mysql-connector-java-$MYSQL_JDBC_VERSION-bin.jar /opt/sqldeveloper/jdbc/lib/
    python scripts/update_sqldeveloper_jdk.py /opt/sqldeveloper/sqldeveloper/bin/sqldeveloper.conf $JDK_PATH
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

