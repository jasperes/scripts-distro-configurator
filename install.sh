#!/bin/bash

# Atualizando ambiente e instalando dependencias
sudo aptitude update
sudo aptitude install vim-athena git zsh htop tree

# Inicia instalações
cd dirname

# TODO criar paths
# sudo mkdir $JAVA_PATH
./configuration.sh

# JDK
sudo tar -xzvf java/jdk-$JDK7_VERSION-linux-i586.tar.gz -C $JAVA_PATH
sudo tar -xzvf java/jdk-$JDK8_VERSION-linux-i586.tar.gz -C $JAVA_PATH

# Eclipse
tar -xzvf ide/eclipse-cpp-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $EXTRACT_PATH
sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-cpp
python scripts/update_eclipse_ini.py /opt/eclipse-cpp/eclipse.ini $JDK_BIN

tar -xzvf ide/eclipse-jee-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $EXTRACT_PATH
sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-jee
python scripts/update_eclipse_ini.py /opt/eclipse-jee/eclipse.ini $JDK_BIN

tar -xzvf ide/eclipse-java-$ECLIPSE_VERSION-linux-gtk.tar.gz -C $EXTRACT_PATH
sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-java
python scripts/update_eclipse_ini.py /opt/eclipse-java/eclipse.ini $JDK_BIN

# SQLDeveloper
unzip sqldeveloper/sqldeveloper-$SQLDEVELOPER_VERSION-no-jre.zip -d $EXTRACT_PATH
sudo mv $EXTRACT_PATH/sqldeveloper /opt/sqldeveloper
cp sqldeveloper/libs/jtds-$JDTS_VERSION.jar /opt/sqldeveloper/jdbc/lib/
cp sqldeveloper/libs/mysql-connector-java-$MYSQL_JDBC_VERSION-bin.jar /opt/sqldeveloper/jdbc/lib/
python scripts/update_sqldeveloper_jdk.py /opt/sqldeveloper/sqldeveloper/bin/sqldeveloper.conf $JDK_PATH

# Clean
rm -rf $EXTRACT_PATH

# TODO adicionar demais programas a instalar
# TODO adicionar etapa para instalar tema openbox
# TODO adicionar etapa para criar script de execucao dos programas e adicionar no path bin

# Instala enhanced zsh e vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh <(curl https://j.mp/spf13-vim3 -L)

# Troca senha usuarios
passwd
sudo su
passwd

