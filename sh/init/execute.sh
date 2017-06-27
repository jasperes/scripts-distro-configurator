#!/bin/bash

function execute() {

	# Install all distro dependencies
	distro_install_dependencies

	# Execute each packages scripts
	exec_funcs $PACKAGES

}
