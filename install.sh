#!/bin/bash

# Atualizando ambiente e instalando dependencias
sudo aptitude update
sudo aptitude install vim-athena git zsh vim-athena htop

# Inicia instalações
cd dirname

# Eclipse
sudo mkdir $JAVA_PATH
sudo tar -xzvf java/jdk-7u80-linux-i586.tar.gz -C $JAVA_PATH
sudo tar -xzvf java/jdk-8u112-linux-i586.tar.gz -C $JAVA_PATH

tar -xzvf ide/eclipse-cpp-mars-2-linux-gtk.tar.gz -C $EXTRACT_PATH
sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-cpp

tar -xzvf ide/eclipse-jee-mars-2-linux-gtk.tar.gz -C $EXTRACT_PATH
sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-jee

tar -xzvf ide/eclipse-java-mars-2-linux-gtk.tar.gz -C $EXTRACT_PATH
sudo mv $EXTRACT_PATH/eclipse /opt/eclipse-java

# SQLDeveloper
unzip sqldeveloper/sqldeveloper-4.1.5.21.78-no-jre.zip -d $EXTRACT_PATH
sudo mv $EXTRACT_PATH/sqldeveloper /opt/sqldeveloper
mv sqldeveloper/libs/jtds-1.3.1.jar /opt/sqldeveloper/jdbc/lib/
mv sqldeveloper/libs/mysql-connector-java-5.1.40-bin.jar /opt/sqldeveloper/jdbc/lib/

# TODO adicionar demais programas a instalar
# TODO adicionar etapa para instalar tema openbox

# Instala enhanced zsh e vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh <(curl https://j.mp/spf13-vim3 -L)

# Troca senha usuarios
passwd
sudo su
passwd

