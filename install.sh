#!/bin/bash

# TODO criar paths
# TODO mkdir $JAVA_PATH
# TODO adicionar demais programas a instalar
# TODO adicionar etapa para instalar tema openbox
# TODO adicionar etapa para criar script de execucao dos programas e adicionar no path bin

cd $(dirname $(readlink -f $0))

source exports.cfg
source sh/packages.sh
source sh/executions.sh

sudo aptitude update
sudo aptitude -y install $DEPENDENCIES

for pkg in ${PKGS_TO_INSTALL[*]}; do
    $pkg
done

rm -rf $TMP_PATH

if [ $UPDATE_USER_PASSWORD = true ]; then
    exec_update_passwd
fi

