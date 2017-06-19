#!/bin/bash

function sqldeveloper() {
    OPT_PATH=/opt/sqldeveloper

    unzip sqldeveloper/sqldeveloper-$SQLDEVELOPER_VERSION-no-jre.zip -d $TMP_PATH
    sudo mv $TMP_PATH/sqldeveloper $OPT_PATH

    cp sqldeveloper/libs/jtds-$JDTS_VERSION.jar $OPT_PATH/jdbc/lib/
    cp sqldeveloper/libs/mysql-connector-java-$MYSQL_JDBC_VERSION-bin.jar $OPT_PATH/jdbc/lib/

    python scripts/update_sqldeveloper_jdk.py $OPT_PATH/sqldeveloper/bin/sqldeveloper.conf $JDK_PATH
    python scripts/remove_context_in_file $OPENBOX_MENU_PATH SQLDEVELOPER

    _create_run $OPT_PATH "./sqldeveloper.sh" "sqldeveloper"
}
