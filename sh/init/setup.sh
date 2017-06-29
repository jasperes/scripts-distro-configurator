#!/bin/bash

# Configure args and anything more is needeed.

function setup() {
    if [[ $UPDATE_DISTRO == true ]]; then
        log_info && log_info "Updating distro..." && log_info
	   distro_update
        log_info && log_info "Distro updated!" && log_info
    fi

    log_info

    _create_if_exists "${PATH_INSTALL}"
    _create_if_exists "${PATH_TMP}"
    _create_if_exists "${PATH_PACKAGES}"
    # _create_if_exists "${PATH_LOG}"
    _create_if_exists "${PATH_LINKS}"
}

function _create_if_exists() {
    _path=$1

    if [ ! -d "${_path}" ]; then
        log_info "Creating directory ${_path}"
        mkdir -p "${_path}"
    fi
}
