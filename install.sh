#!/bin/bash

source exports.cfg

cd $INSTALL_PATH

source sh/packages.sh
source sh/executions.sh
source sh/debian.sh
source sh/theme.sh

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

theme_install
theme_blob

exec_funcs $PKGS_TO_INSTALL

exec_bool $UPDATE_USER_PASSWORD exec_update_passwd

end
