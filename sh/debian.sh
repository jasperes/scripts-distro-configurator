#!/bin/bash

# Debian system configuration
# Scripts to update, install or configure debian.

function deb_update {
    sudo aptitude update
}

function deb_install {
    sudo aptitude -y install $DEPENDENCIES
}

function deb_configure_keyboard {
    sudo dpkg-reconfigure keyboard-configuration
}

function deb_configure_timezone {
    sudo dpkg-reconfigure tzdata
}

