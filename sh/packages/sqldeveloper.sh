#!/bin/bash

function sqldeveloper() {
    OPT_PATH=/opt/sqldeveloper

    unzip $PATH_PACKAGES/sqldeveloper-$SQLDEVELOPER_VERSION-no-jre.zip -d $TMP_PATH
    sudo mv $TMP_PATH/sqldeveloper $OPT_PATH

    python scripts/update_sqldeveloper_jdk.py $OPT_PATH/sqldeveloper/bin/sqldeveloper.conf $JDK_PATH

    if [[ WM = 'openbox' ]]; then
        python scripts/remove_context_in_file $OPENBOX_MENU_PATH SQLDEVELOPER
    fi;

    create_run $OPT_PATH "./sqldeveloper.sh" "sqldeveloper"
}

function sqldeveloper_mysql_jdbc() {
    cp $PATH_PACKAGES/mysql-connector-java-$MYSQL_JDBC_VERSION-bin.jar $OPT_PATH/jdbc/lib/
}

function sqldeveloper_jdts_jdbc() {
    cp $PATH_PACKAGES/jtds-$JDTS_VERSION.jar $OPT_PATH/jdbc/lib/
}
