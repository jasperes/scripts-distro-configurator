#!/bin/bash

function install_theme {
    ## Install GTK2, GTK3, Openbox themes
    cp -r $RESOURCES_PATH/theme/cathexis ~/.themes

    ## Install fonts
    cp -r $RESOURCES_PATH/theme/fonts/Coda ~/.fonts
    cp -r $RESOURCES_PATH/theme/fonts/Inconsolata ~/.fonts
    fc-cache -f -v

    ## Install SLIM theme 
    # sudo cp -r slim/cathexis /usr/share/slim/themes
    # sudo nano /etc/slim.conf
    #
    # TODO update file from-to
    # from: current_theme default
    # to: current_theme cathexis

    ## Tint2 theme
    cp $RESOURCES_PATH/theme/tint2/tint2rc-personal ~/.config/tint2

    ## Conky
    cp $RESOURCES_PATH/theme/conky/conkyrc ~/.conkyrc

    ## RXVT Terminal
    cp $RESOURCES_PATH/theme/terminal/Xdefaults ~/.Xdefaults
}

function install_blob {
    mkdir ~/.config/blob
    cp -r $RESOURCES_PATH/blob/* ~/.config/blob/
    bl-obthemes
}
