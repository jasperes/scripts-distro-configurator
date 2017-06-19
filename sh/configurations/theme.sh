#!/bin/bash

# Theme Scripter
# Here we will update files corresponding to distro theme
# 
# ALERT! any old file will be deleted...

function theme_install() {

    ## Install GTK2, GTK3, Openbox themes
    rm -rf ~/.local/share/themes/*
    cp -r $RESOURCES/themes/* ~/.local/share/themes

    ## Install fonts
    rm -rf ~/.local/share/fonts/*
    cp -r $RESOURCES/fonts/* ~/.local/share/fonts
    fc-cache -f -v

    ## Tint2 theme
    rm -rf ~/.config/tint2/*
    cp -r $RESOURCES/tint2/* ~/.config/tint2

    ## Conky
    rm -rf ~/.config/conky/*
    cp -r $RESOURCES/conky/* ~/.config/conky
    
}

function theme_blob() {
    mkdir ~/.config/blob
    cp -r $RESOURCES/blob/* ~/.config/blob/
    bl-obthemes
}
