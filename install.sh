#!/bin/bash

cd $(dirname $(readlink -f $0))

# 1.imports
source sh/init/imports.sh

# 2.confirm configurations
# 3.Test
# 4.Setup
setup

# 5.Execute
execute

# 6.Clean
