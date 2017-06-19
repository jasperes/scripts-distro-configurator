#!/bin/bash

# Configurations
source configurations/paths.conf
source configurations/dependencies.conf
source configurations/packages.conf
source configurations/themes.conf
source configurations/versions.conf
source configurations/settings.conf

# Utils
source sh/utils/create_run_file.sh

# Scripts Configurations
source sh/configurations/paths.sh
source sh/configurations/executions.sh
source sh/configurations/theme.sh

# Distro
if [ DISTRO == 'debian' ]; then
	source sh/distro/debian.sh
elif [ DISTRO == 'archlinux' ]; then
	source sh/distro/archlinux.sh
fi;

# WM
if [ WM == 'i3' ]; then
	source sh/wm/i3.sh
elif [ WM == 'openbox' ]; then
	source sh/wm/openbox.sh
fi;

# Import all packages, but execute only configured for
source sh/packages/docker.sh
source sh/packages/eclipse.sh
source sh/packages/jdk.sh
source sh/packages/mongodb.sh
source sh/packages/mysql.sh
source sh/packages/oracle_service_bus.sh
source sh/packages/postman.sh
source sh/packages/redis.sh
source sh/packages/soapui.sh
source sh/packages/sqlddeveloper.sh
source sh/packages/sublime.sh
source sh/packages/tomcat.sh
source sh/packages/vim.sh
source sh/packages/weblogic.sh
source sh/packages/zsh.sh
