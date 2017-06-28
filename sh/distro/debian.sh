#!/bin/bash

# Debian system configuration
# Scripts to update, install or configure debian.

function distro_update() {
    sudo aptitude update
}

function distro_install_dependencies() {
    eval "sudo aptitude -y install ${DEPENDENCIES[*]}"
}

function distro_configure_keyboard() {
    sudo dpkg-reconfigure keyboard-configuration
}

function distro_configure_timezone() {
    sudo dpkg-reconfigure tzdata
}

