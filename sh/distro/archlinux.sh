#!/bin/bash

function distro_update() {
    sudo pacman -Syu
}

function distro_install_dependencies() {
    sudo pacman -S $DEPENDENCIES
}
