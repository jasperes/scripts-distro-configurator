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
source sh/debian/debian.sh

function exec_funcs {
    for script in $1; do
        $script
    done
}

function exec_bool {
    if [ $1 = true ]; then
        $2
    fi
}

function end {
    rm -rf $TMP_PATH
    reboot
}

deb_update
deb_install

exec_funcs $PKGS_TO_INSTALL

exec_bool $UPDATE_USER_PASSWORD exec_update_passwd

end

