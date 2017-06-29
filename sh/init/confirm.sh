#!/bin/bash

function confirm() {
    log_info && log_info "--------------------------------------- --"
    log_info && log_info "Personal Distro Configurator install at $(date)"

    log_info && log_info "The corresponding instalation will be done:" && log_info

    log_info "# Distro : $DISTRO"
    log_info "# WM     : $WM"
    log_info "# Arch   : $ARCH" && log_info

    if [[ $DEPENDENCIES != "" ]]; then
        log_info "# Dependencies:" && log_info "${DEPENDENCIES[*]}" && log_info
    fi

    if [[ $PACKAGES != "" ]]; then
        log_info "# Packages:" && log_info "${PACKAGES[*]}" && log_info
    fi

    log_info "Confirm? [Y/n]" && read -r option

    if [[ $option != 'Y' && $option != 'y' && $option != '' ]]; then
        log_info && log_info "Canceled by user"
        exit 1
    fi
}
