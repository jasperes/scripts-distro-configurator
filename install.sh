#!/bin/bash

printf "\n == Welcome to Personal Distro Configurator! == \n\n"

# 0.init
printf "Initial settings..."
set -e
cd $(dirname $(readlink -f $0))
printf " ok\n"

# 1.imports
printf "Imports..."
source sh/init/imports.sh
printf " ok\n"

printf "\nStarting logs\n"

# 2.confirm
confirm

# 3.Test
# 4.Setup
setup

# 5.Execute
execute

# 6.Clean
