#!/bin/bash

function execute() {

	# Install all distro dependencies
    if [[ $DEPENDENCIES != "" ]]; then
        log_info && log_info "Install dependencies..." && log_info
        distro_install_dependencies
        log_info && log_info "Dependencies installed with success!"
    fi

	# Execute each packages scripts
    if [[ $PACKAGES != "" ]]; then
        log_info && log_info "Install packages..."
	   exec_funcs "${PACKAGES[*]}"
        log_info && log_info "Packages installed with success!"
    fi

}
