#!/bin/bash

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

