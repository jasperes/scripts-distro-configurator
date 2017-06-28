#!/bin/bash

function execute() {

	# Install all distro dependencies
    log_info && log_info "Install dependencies..." && log_info
	distro_install_dependencies
    log_info && log_info "Dependencies installed with success!" && log_info

	# Execute each packages scripts
    log_info && log_info "Install packages..." && log_info
	exec_funcs "${PACKAGES[*]}"
    log_info && log_info "Packages installed with success!" && log_info

}
